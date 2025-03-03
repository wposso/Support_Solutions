// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';
// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:support/views/login/widget.dart';
import 'package:toastification/toastification.dart';

var loginEmailController = TextEditingController();
var loginPasswordController = TextEditingController();
var loginSendCode = TextEditingController();

bool loginIsChecked = false;
bool loginIsActive = true;

String generarCodigo() {
  return (100000 +
          (999999 - 100000) *
              (new DateTime.now().millisecondsSinceEpoch % 1000000) /
              1000000)
      .toStringAsFixed(0);
}

String codeGenerated = generarCodigo();

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

void loginCodeAlert(BuildContext context) {
  toastification.show(
      showProgressBar: false,
      autoCloseDuration: const Duration(seconds: 20),
      type: ToastificationType.info,
      style: ToastificationStyle.flat,
      title: const Text(
        'Your access recuperation code is:',
        style: TextStyle(fontSize: 16),
      ),
      description: Text(codeGenerated));
  loginSendCode.clear();
}

void recuperationPassword(BuildContext context) {
  if (loginSendCode.text.isEmpty) {
    loginAuthNotification(context, ToastificationType.warning, 'Ooops',
        'Please enter a valida number phone');
  } else {
    loginCodeAlert(context);
    Navigator.pop(context);
    void loginBuildAlert(BuildContext context) {
      showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Row(
              children: [
                const Text(
                  'Enter a access code',
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Please enter the code access sended to your App',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: loginSendCode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      hintText: 'Enter access code',
                      hintStyle: const TextStyle(fontSize: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250, 50),
                          elevation: 5,
                          backgroundColor:
                              const Color.fromARGB(255, 44, 45, 51),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        loginCodeAlert(context);
                      },
                      child: const Text(
                        'Get code',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ))
                ],
              )
            ],
          );
        },
      );
    }
  }
}
