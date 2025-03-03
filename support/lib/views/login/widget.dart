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

void loginBuildAlert(BuildContext context,) {
  showAdaptiveDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Row(
          children: [
            Text(
              loginCodeSended ? 'Enter code' : 'Send code',
              style: const TextStyle(fontSize: 20),
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
            Text(
              loginCodeSended
                  ? 'Please enter the access code sended you'
                  : 'Please enter your phone number to receive access code',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            loginCodeSended
                ? TextField(
                    controller: loginSendCode,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
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
                  )
                : TextField(
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
                      backgroundColor: const Color.fromARGB(255, 44, 45, 51),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    loginCodeAlert(context);
                    loginCodeSended = true;
                  },
                  child: Text(
                    loginCodeSended ? 'validate' : 'Get code',
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ))
            ],
          )
        ],
      );
    },
  );
}
