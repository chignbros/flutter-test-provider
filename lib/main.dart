import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/router.dart';
import 'package:test_provider_archetec/services/authentication.dart';
import 'package:test_provider_archetec/ui/Views/LoginView.dart';

import 'Models/user_model.dart';
import 'locator.dart';

void main() {
  locatorSetup();
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      builder: (context)=> locator<AuthenticationService>().user,
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: 'login',
        onGenerateRoute: Router.getNerateRout,
      ),
      
    );
  }
}