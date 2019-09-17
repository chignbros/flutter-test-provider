
import 'package:test_provider_archetec/Models/post_model.dart';
import 'package:test_provider_archetec/emums.dart';
import 'package:test_provider_archetec/locator.dart';
import 'package:test_provider_archetec/services/api.dart';
import 'package:test_provider_archetec/viewmodel/baseModel.dart';

class HomeModel extends BaseModel{

  Api api=locator<Api>();

  List<Post> posts;

  Future getPost(int userId)async{
    setState(ViewState.Busy);
    posts=await api.getPostForUser(userId);
    setState(ViewState.Idle);
  }

}