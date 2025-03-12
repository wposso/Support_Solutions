// ignore_for_file: non_constant_identifier_names

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

Color backgroundAppColor = const Color.fromARGB(255, 255, 255, 255);

Widget spaceHeigth(double size) {
  return SizedBox(
    height: size,
  );
}

Widget spaceWidht(double size) {
  return SizedBox(
    height: size,
  );
}

void globalNotification(BuildContext context, ToastificationType type,
    String tittle, String description) {
  toastification.show(
      showProgressBar: false,
      autoCloseDuration: const Duration(seconds: 5),
      type: type,
      style: ToastificationStyle.flat,
      title: Text(
        tittle,
        style: const TextStyle(fontSize: 16),
      ),
      description: Text(
        description,
        style: const TextStyle(fontSize: 14),
      ));
}

var logoSupport = const Padding(
  padding: EdgeInsets.zero,
  child: Image(
    image: AssetImage('assets/support_solution.jpeg'),
    fit: BoxFit.contain,
    height: 250,
    width: 290,
  ),
);

var Footer = NavigationBar(backgroundColor: Colors.white, destinations: const [
  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
  NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  NavigationDestination(icon: Icon(Icons.wallet), label: 'Payments'),
  NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
]);
