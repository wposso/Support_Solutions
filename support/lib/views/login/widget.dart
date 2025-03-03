// import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:support/views/login/controller.dart';
import 'package:toastification/toastification.dart';

void loginAuthNotification(BuildContext context, ToastificationType type,
    String tittle, String description) {
  toastification.show(
      showProgressBar: false,
      style: ToastificationStyle.flatColored,
      type: type,
      autoCloseDuration: const Duration(seconds: 5),
      title: Text(tittle),
      description: Text(description));
}

void loginBuildAlert(BuildContext context) {
  showAdaptiveDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Row(
          children: [
            const Text(
              'Send code',
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
              'Please enter your number phone to get a access code',
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
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  prefix: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+57  ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  hintText: 'Enter phone number',
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
                      backgroundColor: const Color.fromARGB(255, 44, 45, 51),
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
