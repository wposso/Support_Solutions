import 'package:flutter/material.dart';
import 'package:support/core/settings.dart';
import 'package:support/views/contact/contact_controller.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundAppColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SearchBar(
              elevation: WidgetStatePropertyAll(2),
              leading: Icon(Icons.search),
              hintText: 'Search',
              backgroundColor: WidgetStatePropertyAll(Colors.white70),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: contactList.length,
                    itemBuilder: (context, i) {
                      final index = contactList[i];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Card(
                          elevation: 2,
                          child: ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(index.name),
                            subtitle: Text(index.phone),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
