import 'package:flutter/material.dart';
import 'package:support/views/login/widget.dart';
import 'package:toastification/toastification.dart';

void loginAuth(BuildContext context) {
  bool userFound = false;
  try {
    if (loginEmailController.text == 'admin@mail.com' &&
        loginPasswordController.text == 'Medellin2025.') {
      userFound = true;
    }

    if (loginEmailController.text.isEmpty &&
        loginPasswordController.text.isEmpty) {
      loginAuthNotification(context, ToastificationType.warning, 'Info',
          'Please enter a valid credentials');
    } else if (userFound) {
      loginAuthNotification(context, ToastificationType.success, 'Success',
          'User found success, welcome back');
    } else {
      loginAuthNotification(context, ToastificationType.error, 'Error',
          'User not found, please try again');
    }
    loginEmailController.clear();
    loginPasswordController.clear();
  } catch (x) {
    throw Exception('Auth error:$x');
  }
}
