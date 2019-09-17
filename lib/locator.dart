import 'package:get_it/get_it.dart';

import 'package:test_provider_archetec/services/api.dart';
import 'package:test_provider_archetec/services/authentication.dart';
import 'package:test_provider_archetec/viewmodel/comments_model.dart';
import 'package:test_provider_archetec/viewmodel/home_model.dart';
import 'package:test_provider_archetec/viewmodel/login_model.dart';

GetIt locator = GetIt.instance;

void locatorSetup(){
  locator.registerLazySingleton(()=>AuthenticationService());
  locator.registerLazySingleton(()=>Api());
 
  locator.registerFactory(()=>LoginModel());
  locator.registerFactory(()=>HomeModel());
  locator.registerFactory(()=>CommentModel());

}