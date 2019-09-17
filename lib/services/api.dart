import 'dart:convert';
import 'package:test_provider_archetec/Models/comment_model.dart';
import 'package:test_provider_archetec/Models/user_model.dart';
import 'package:test_provider_archetec/Models/post_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const endpoint = "https://jsonplaceholder.typicode.com";
  var client = http.Client();

  Future<User> getUserProfile(int userId) async {
    var response = await http.get('$endpoint/users/$userId');
    return User.fromJson(json.decode(response.body));
  }

  Future<List<Post>> getPostForUser(int userId) async {
    var posts = List<Post>();
    var response = await http.get('$endpoint/posts/userId=$userId');

    var parse = Post.fromJson(json.decode(response.body)) as List<dynamic>;

    for (var post in parse) {
      posts.add(Post.fromJson(post));
    }
    return posts;
  }

  Future<List<Comment>> getCommentForPost(int postId) async {
    var comments = List<Comment>();
    var response = await http.get('$endpoint/posts/postId=$postId');

    var parse = Comment.fromJson(json.decode(response.body)) as List<dynamic>;

    for (var comment in parse) {
      comments.add(Comment.fromJson(comment));
    }

    return comments;
  }
}
