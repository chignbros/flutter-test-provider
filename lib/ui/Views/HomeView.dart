import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/Models/post_model.dart';
import 'package:test_provider_archetec/Models/user_model.dart';
import 'package:test_provider_archetec/emums.dart';
import 'package:test_provider_archetec/ui/Views/baseview.dart';
import 'package:test_provider_archetec/ui/shared/text_style.dart';
import 'package:test_provider_archetec/ui/shared/ui_helper.dart';
import 'package:test_provider_archetec/viewmodel/home_model.dart';
import 'package:test_provider_archetec/widget/post_lists.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  BaseView<HomeModel>(
      onModelReady: (model)=>model.getPost(Provider.of<User>(context).id),
      builder: (context,model,child)=>Scaffold(
        body: model.state == ViewState.Busy
        ? Center(child: CircularProgressIndicator(),)
        :Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            UiHelper.verticalSpaceLarge(),
            Padding(padding: EdgeInsets.only(left:20.0),
            child: Text('Welcome ${Provider.of<User>(context).name}',style: headerStyle,)
            
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child:Text("Here all your posts",style: subHeasderTitle,) ,
            ),
            Expanded(
              child: getPostUI(model.posts),
            )
          ],
        )
      )
      
    );
  }
  Widget getPostUI(List<Post> posts)=>ListView.builder(
    itemCount: posts.length,
    itemBuilder: (context,index)=>PostListItem(
      post: posts[index],
      onTap: ()=>Navigator.pushNamed(context, '/post'),
    ),
  );
}