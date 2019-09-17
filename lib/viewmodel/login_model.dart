import 'package:test_provider_archetec/services/authentication.dart';
import 'package:test_provider_archetec/viewmodel/baseModel.dart';

import '../emums.dart';

class LoginModel extends BaseModel{
  AuthenticationService _authenticationService;
  AuthenticationService get authenticationService=>_authenticationService;
  set authenticationService(AuthenticationService authenticationService){
    _authenticationService=authenticationService;
    notifyListeners();
  }
  String errorMessage;
  Future<bool>login(String userIdText)async{
    setState(ViewState.Busy);
    var userId =int.tryParse(userIdText);
    if (userId==null) {
      errorMessage="Value enter is not a number";
      return false;

    }
    var success =await _authenticationService.login(userId);
    setState(ViewState.Idle);
    return success;

  }
}