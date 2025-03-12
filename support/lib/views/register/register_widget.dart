import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:support/views/register/register_controller.dart';

void registerShowDialog(BuildContext context, Function onAccept) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (builder) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 19),
          ),
          content: Text(privacyMessage),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000)),
                        activeColor: const Color.fromARGB(255, 44, 45, 51),
                        checkColor: Colors.white,
                        value: regConfAccept,
                        onChanged: (x) {
                          onAccept();
                          Navigator.pop(context);
                        }),
                  ),
                ),
                const Text(
                  'I accept',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        );
      });
}
