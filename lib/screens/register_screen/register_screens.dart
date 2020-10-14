import 'package:flutter/material.dart';
import 'package:sqlite/screens/login_screen/login_screen_view.dart';
import 'package:sqlite/screens/register_screen/register_screen_view.dart';

class RegisterScreen extends StatefulWidget {
  final String userStr;

  RegisterScreen({this.userStr});
  @override
  RegisterScreenView createState() => new RegisterScreenView();
}

