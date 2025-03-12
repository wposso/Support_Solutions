import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:support/core/settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer,
      body: Padding(padding: EdgeInsets.all(20)),
    );
  }

}