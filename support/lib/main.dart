import 'package:flutter/material.dart';
import 'package:support/routes/routes.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        initialRoute: '/Login',
        routes: routes,
      ),
    );
  }
}
