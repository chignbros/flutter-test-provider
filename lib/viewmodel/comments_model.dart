
import 'package:test_provider_archetec/Models/comment_model.dart';
import 'package:test_provider_archetec/emums.dart';
import 'package:test_provider_archetec/locator.dart';
import 'package:test_provider_archetec/services/api.dart';
import 'package:test_provider_archetec/viewmodel/baseModel.dart';

class CommentModel  extends BaseModel{
  Api api =locator<Api>();
  List<Comment> comments;

  Future getComments(int postId)async{
    setState(ViewState.Busy);
    comments=await api.getCommentForPost(postId);
    setState(ViewState.Idle);
  }
}