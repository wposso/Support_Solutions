import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toastification/toastification.dart';

var loginEmailController = TextEditingController();
var loginPasswordController = TextEditingController();

bool loginIsChecked = false;
bool loginIsActive = true;

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
            const Text('Please enter your number phone to get code'),
            const SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
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
              height: 50,
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
                  onPressed: () {},
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
