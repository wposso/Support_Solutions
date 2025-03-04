import 'package:flutter/material.dart';
import 'package:support/views/login/login.dart';
import 'package:support/views/register/register.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/Login': (context) => const Login(),
  '/Register': (context) => const Register(),
};
