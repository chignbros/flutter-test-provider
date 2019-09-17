import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider_archetec/emums.dart';
import 'package:test_provider_archetec/locator.dart';
import 'package:test_provider_archetec/ui/Views/baseview.dart';
import 'package:test_provider_archetec/ui/shared/app_colors.dart' as prefix0;
import 'package:test_provider_archetec/viewmodel/baseModel.dart';
import 'package:test_provider_archetec/viewmodel/login_model.dart';
import 'package:test_provider_archetec/widget/headerLogin.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
        builder: (context, model, child) => Scaffold(
              backgroundColor: prefix0.backgroundColor,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LoginHeader(
                    controller: _controller,
                    validateMss: model.errorMessage,
                  ),
                  model.state == ViewState.Busy
                      ? const CircularProgressIndicator()
                      : FlatButton(
                          onPressed: () async {
                            var loginsucess =
                                await model.login(_controller.text);
                            if (loginsucess) {
                              Navigator.pushNamed(context, '/');
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          ),
                          color: Colors.white,
                        )
                ],
              ),
            ));
  }
}
