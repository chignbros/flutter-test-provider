
import 'package:flutter/foundation.dart';
import 'package:test_provider_archetec/emums.dart';

class BaseModel extends ChangeNotifier{
  ViewState _state=ViewState.Idle;
  ViewState get state=>_state;
  void setState(ViewState viewState){
    _state=viewState;
    notifyListeners();
  }
}