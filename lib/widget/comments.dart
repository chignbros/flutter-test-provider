import 'package:flutter/material.dart';
import 'package:test_provider_archetec/Models/comment_model.dart';
import 'package:test_provider_archetec/emums.dart';
import 'package:test_provider_archetec/ui/Views/baseview.dart';
import 'package:test_provider_archetec/ui/shared/app_colors.dart';
import 'package:test_provider_archetec/ui/shared/ui_helper.dart';
import 'package:test_provider_archetec/viewmodel/comments_model.dart';

class Comments extends StatelessWidget {
  final int postid;

  const Comments(this.postid);

  @override
  Widget build(BuildContext context) {

    return BaseView<CommentModel>(
      builder: (context,model,child)=>model.state==ViewState.Busy ? Center(child: CircularProgressIndicator()):Expanded(
        child: ListView(
          children: model.comments.map((comment)=>CommentItem(comment)).toList(),
        ),
      )
    );
  }
}

class CommentItem extends StatelessWidget {
  final Comment comment;

  const CommentItem( this.comment);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: commentColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(comment.name,style: TextStyle(fontWeight: FontWeight.bold),),
          UiHelper.verticalSpaceSmall(),
          Text(comment.body)

        ],
      ),
    );
  }
}