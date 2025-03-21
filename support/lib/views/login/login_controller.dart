// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
// import 'dart:math';
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/login/login_widget.dart';
import 'package:toastification/toastification.dart';

var loginEmailController = TextEditingController();
var loginPasswordController = TextEditingController();
var loginSendCode = TextEditingController();

bool loginIsChecked = false;
bool loginIsActive = true;
bool loginCodeSended = false;

class users {
  String email;
  String password;
  users({required this.email, required this.password});
}

List<users> usersList = [
  users(email: 'admin@mail.com', password: 'Medellin2025.'),
  users(email: 'wposso@outlook.com', password: 'Colombia**')
];

String generarCodigo() {
  return (100000 +
          (999999 - 100000) *
              (DateTime.now().millisecondsSinceEpoch % 1000000) /
              1000000)
      .toStringAsFixed(0);
}

String codeGenerated = generarCodigo();

void loginAuth(BuildContext context) {
  String emailFound;
  String passwordFoun;
  bool userFound = false;

  try {
    for (var user in usersList) {
      emailFound = user.email;
      passwordFoun = user.password;

      if (loginEmailController.text == emailFound &&
          loginPasswordController.text == passwordFoun) {
        userFound = true;
        break;
      }
    }

    if (loginEmailController.text.isEmpty &&
        loginPasswordController.text.isEmpty) {
      globalNotification(context, ToastificationType.warning, 'Warning',
          'Please enter all fields required');
    } else if (userFound) {
      globalNotification(context, ToastificationType.success, 'Success',
          'User found success, welcome back');
      Navigator.pushNamed(context, '/Home');
    } else {
      globalNotification(context, ToastificationType.error, 'Error',
          'Has ocurres an error with your credentials');
    }
    loginEmailController.clear();
    loginPasswordController.clear();
  } catch (x) {
    throw Exception('Auth error:$x');
  }
}

void loginCodeAlert(BuildContext context) {
  toastification.show(
      showProgressBar: false,
      autoCloseDuration: const Duration(seconds: 20),
      type: ToastificationType.info,
      style: ToastificationStyle.flat,
      title: const Text(
        'Your access recuperation code is',
        style: TextStyle(fontSize: 16),
      ),
      description: Text(codeGenerated));
  loginSendCode.clear();
}

// void recuperationPassword(BuildContext context) {
//   if (loginSendCode.text.isEmpty) {
//     loginAuthNotification(context, ToastificationType.warning, 'Ooops',
//         'Please enter a valida number phone');
//   }
//   loginBuildAlert(context,);
// }
