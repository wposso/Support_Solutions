// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/register/register_controller.dart';
import 'package:support/views/register/register_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            logoSupport,
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Get started',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Please enter information required to continue',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            spaceHeigth(40),
            Container(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    controller: regEmailController,
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        hintText: 'New email',
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  spaceHeigth(15),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    onChanged: (x) {
                      setState(() {});
                    },
                    obscureText: regPassObscure,
                    controller: regPassController,
                    decoration: InputDecoration(
                        suffixIcon: regPassController.text.isEmpty
                            ? null
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    regPassObscure = !regPassObscure;
                                  });
                                },
                                icon: Icon(regPassObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        hintText: 'New password',
                        hintStyle: const TextStyle(fontSize: 16),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  spaceHeigth(15),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm password',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    onChanged: (x) {
                      setState(() {});
                    },
                    obscureText: regConfPassObscure,
                    controller: regConfController,
                    decoration: InputDecoration(
                        suffixIcon: regConfController.text.isEmpty
                            ? null
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    regConfPassObscure = !regConfPassObscure;
                                  });
                                },
                                icon: Icon(regConfPassObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        hintText: 'Confirm password',
                        hintStyle: const TextStyle(fontSize: 16),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                ],
              ),
            ),
            spaceHeigth(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000)),
                        activeColor: const Color.fromARGB(255, 44, 45, 51),
                        checkColor: Colors.white,
                        value: regAccept,
                        onChanged: (x) {
                          setState(() {
                            registerShowDialog(context, () {
                              setState(() {
                                regAccept = !regAccept;
                              });
                            });
                          });
                        }),
                  ),
                ),
                const Text(
                  'I accept tearms policy privacy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
            spaceHeigth(60),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    fixedSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(255, 44, 45, 51)),
                onPressed: () {
                  userRegister(context);
                },
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
            spaceHeigth(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Are you already registered?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: const Text('Sign in',
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
