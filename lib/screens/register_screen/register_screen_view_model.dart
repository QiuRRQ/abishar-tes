import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqlite/model/auth_model/user_auth.dart';
import 'package:sqlite/model/auth_model/user_auth_response.dart';
import 'package:sqlite/screens/login_screen/login_screens.dart';
import 'package:sqlite/screens/register_screen/register_screens.dart';
import 'package:sqlite/utils/db_helper.dart';
import 'package:sqlite/utils/myDialog.dart';
import 'package:sqlite/utils/string.dart';



abstract class RegisterViewModel extends State<RegisterScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController no_telepon = TextEditingController();
  bool match = false;
  bool isActive = false;
  var url = TextEditingController();
  bool isShow = false;
  final formKey = GlobalKey<FormState>();
  DatabaseHelper _dbHelper;
  var data;
  UserAuth User = UserAuth();

  setShow() {
    setState(() {
      isShow = isShow ? false : true;
    });
  }

  setParam(){
    setState(() {
      User.UserName = username.text;
      User.Password = password.text;
      User.nama = nama.text;
      User.no_hp = no_telepon.text;
      User.alamat = alamat.text;
    });
  }

  goToLogin(){
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (c) => LoginScreen()));
  }

  _onSubmit() async {
    Loading(context).show();
    await setParam();
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      await _dbHelper.insertContact(User);
      form.reset();
    }
    Navigator.pop(context);
  }

  register(){
    _onSubmit();
  }
  getDB() async {
    data = await _dbHelper.fetchContacts();
  }

  @override
  void initState() {
    super.initState();
    _dbHelper = DatabaseHelper.instance;
    getDB();
  }
}
