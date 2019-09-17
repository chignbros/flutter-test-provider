import 'dart:async';

import 'package:test_provider_archetec/Models/user_model.dart';
import 'package:test_provider_archetec/locator.dart';
import 'package:test_provider_archetec/services/api.dart';

class AuthenticationService {
  Api api = locator<Api>();
  StreamController<User> _userController = StreamController<User>();
  Stream<User> get user=>_userController.stream;

  Future<bool> login(int userId) async {
    var fetchedUser = await api.getUserProfile(userId);
    var hasUser = fetchedUser != null;
    if (hasUser) {
      _userController.add(fetchedUser);
    }
    return hasUser;
  }


}
