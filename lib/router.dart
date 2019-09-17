import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/Models/post_model.dart';
import 'package:test_provider_archetec/ui/Views/HomeView.dart';
import 'package:test_provider_archetec/ui/Views/LoginView.dart';
import 'package:test_provider_archetec/ui/Views/PostView.dart';

class Router{
  static Route<dynamic> getNerateRout(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_)=>HomeView());
      case 'login':
        return MaterialPageRoute(builder:(_)=>LoginView());
      case 'post':
        return MaterialPageRoute(builder: (_)=>PostView());
      
      default:
        return MaterialPageRoute(builder: (_){
            return Scaffold(
              body: Center(
                child: Text("No rout defined for ${settings.name}"),
              ),
            );
        });
    }
  }
}