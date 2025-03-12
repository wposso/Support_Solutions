import 'package:flutter/material.dart';
import 'package:support/views/home/home.dart';
import 'package:support/views/login/login.dart';
// import 'package:support/views/payment/payment.dart';
import 'package:support/views/register/register.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/Login': (context) => const Login(),
  '/Register': (context) => const Register(),
  '/Home': (context) => const Home(),
  // '/Payment': (context) => const Payment(),
};
