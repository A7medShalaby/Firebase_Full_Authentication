import 'package:firebase_authentication/presentation/screens/login_screen.dart';
import 'package:firebase_authentication/presentation/screens/singup_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreen(onClickedSignUp: toggle)
      : SignupScreen(onClickedSignUp: toggle);
  void toggle() => setState(() {
        isLogin = !isLogin;
      });
}
