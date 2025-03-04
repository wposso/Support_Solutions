import 'package:flutter/widgets.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/login/login_controller.dart';
import 'package:toastification/toastification.dart';

var regEmailController = TextEditingController();
var regPassController = TextEditingController();
var regConfController = TextEditingController();

bool regIsChecked = false;

void userRegister(BuildContext context) {
  if (regEmailController.text.isEmpty && regPassController.text.isEmpty) {
    globalNotification(context, ToastificationType.warning, 'Warning',
        'Please fill all fields to continue');
  } else if (regPassController.text != regConfController.text) {
    globalNotification(context, ToastificationType.info, 'Information',
        'please validate passwords match');
  } else {
    usersList.add(users(
        email: regEmailController.text, password: regPassController.text));
  }
  regEmailController.clear();
  regPassController.clear();
  regConfController.clear();
}
