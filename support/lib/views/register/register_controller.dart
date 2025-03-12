import 'package:flutter/widgets.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/login/login_controller.dart';
import 'package:toastification/toastification.dart';

var regEmailController = TextEditingController();
var regPassController = TextEditingController();
var regConfController = TextEditingController();

bool regPassObscure = true;
bool regConfPassObscure = true;

bool regAccept = false;
bool regConfAccept = false;

String privacyMessage =
    "We value your privacy and are committed to protecting your personal information. By using this app, you agree to the following:\n\n"
    "- Data Collection: We collect information such as your email, name, and usage data to provide and improve our services.\n\n"
    "- Usage of Data: The data collected is used to personalize your experience, process transactions, and send updates.\n\n"
    "- Data Sharing: We do not share your personal information with third parties unless required by law or necessary to provide services.\n\n"
    "- Cookies: We use cookies to enhance your app experience and track usage.\n\n"
    "- Security: We take reasonable measures to secure your information, but we cannot guarantee complete protection.\n\n"
    "Your privacy is important to us. If you have any questions, feel free to contact us.";

void userRegister(BuildContext context) {
  if (regEmailController.text.isEmpty && regPassController.text.isEmpty) {
    globalNotification(context, ToastificationType.warning, 'Warning',
        'Please fill all fields to continue');
  } else if (regPassController.text != regConfController.text) {
    globalNotification(context, ToastificationType.info, 'Information',
        'please validate passwords match');
  } else {
    if (regAccept == false) {
      globalNotification(context, ToastificationType.warning, 'Warnig',
          'Please accept the terms');
    } else {
      usersList.add(users(
          email: regEmailController.text, password: regPassController.text));
      globalNotification(context, ToastificationType.success, 'Completed',
          "User created successfully, let's get started");
    }
  }
  regEmailController.clear();
  regPassController.clear();
  regConfController.clear();
}
