import 'package:chat_app_ui/auth/signin_view.dart';
import 'package:chat_app_ui/auth/signup_view.dart';
import 'package:chat_app_ui/chat/widgets/chat_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SigninView(),
    );
  }
}
