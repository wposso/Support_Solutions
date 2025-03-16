import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/home/home_controller.dart';
import 'package:support/views/login/login_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      bottomNavigationBar: Footer,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hi, Usuario',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Productivy',
                  style: TextStyle(fontSize: 17),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                    },
                    child: const Row(
                      children: [
                        Text(
                          'More',
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black87,
                        )
                      ],
                    ))
              ],
            ),
            productivityCard(context)
          ],
        ),
      ),
    );
  }
}
