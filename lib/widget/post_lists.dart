import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_provider_archetec/Models/post_model.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  final Function onTap;

  const PostListItem({Key key, this.post, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0.0, 2.0),
                  color: Color.fromARGB(80, 0, 0, 0),
                  blurRadius: 3.0),
            ]),
            child: Column(
              children: <Widget>[
                Text(post.title,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 16.0),),
                Text(post.body,overflow: TextOverflow.ellipsis,maxLines:2,)

              ],
            ),
      ),
    );
  }
}
