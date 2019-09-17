import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/Models/comment_model.dart';
import 'package:test_provider_archetec/Models/post_model.dart';
import 'package:test_provider_archetec/Models/user_model.dart';
import 'package:test_provider_archetec/ui/shared/app_colors.dart' as prefix0;
import 'package:test_provider_archetec/ui/shared/text_style.dart';
import 'package:test_provider_archetec/ui/shared/ui_helper.dart';
import 'package:test_provider_archetec/widget/comments.dart';
class PostView extends StatelessWidget {
  final Post post;

  const PostView({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: prefix0.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              UiHelper.verticalSpaceLarge(),
              Text(post.title,style: headerStyle,),
              Text('by ${Provider.of<User>(context).name}'),
              UiHelper.verticalSpaceMedium(),
              Text(post.body),
              Comments(post.id),

          ],
        ),
      ),
    );
  }
}