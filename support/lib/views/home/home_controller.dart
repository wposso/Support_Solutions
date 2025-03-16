import 'package:flutter/material.dart';

class Productivy {
  String tittle;
  String subtittle;
  IconData icon;

  Productivy(
      {required this.tittle, required this.subtittle, required this.icon});
}

List<Productivy> productivyList = [
  Productivy(
      tittle: 'Calendar',
      subtittle: 'Productivity',
      icon: Icons.calendar_month),
  Productivy(
      tittle: 'Favorite', subtittle: 'Productivity', icon: Icons.favorite),
  Productivy(tittle: 'Contacts', subtittle: 'Productivity', icon: Icons.person),
  Productivy(
      tittle: 'University', subtittle: 'Productivity', icon: Icons.school)
];

Widget productivityCard(BuildContext context) {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productivyList.length,
        itemBuilder: (context, i) {
          final index = productivyList[i];
          return SizedBox(
            width: 290,
            child: Card(
              color: const Color.fromARGB(255, 250, 249, 249),
              child: ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Icon(
                    index.icon,
                    color: Colors.white,
                  ),
                ),
                title: Text(index.tittle),
                subtitle: Text(index.subtittle),
                trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      _navigateToScreen(context, index.tittle);
                    },
                    child: const Text('Start')),
              ),
            ),
          );
        }),
  );
}

void _navigateToScreen(BuildContext context, String tittle) {
  switch (tittle) {
    case 'Calendar':
      Navigator.pushNamed(context, '/Calendar');
      break;
    case 'Contacts':
      Navigator.pushNamed(context, '/Contact');
      break;
    case 'Favorite':
      Navigator.pushNamed(context, '/Favorite');
      break;
    case 'University':
      Navigator.pushNamed(context, '/University');
      break;
  }
}
