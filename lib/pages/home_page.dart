import 'package:apps_satu/arguments/detail_arguments.dart';
import 'package:apps_satu/pages/detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bar'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.filter),
          Icon(Icons.notifications),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Routing to another pages with simple way
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const DetailPage(),
                  //   ),
                  // );

                  // Routing with route named
                  Navigator.of(context).pushNamed(
                    '/detail',
                    arguments: DetailArguments(
                      text: 'From Homepage',
                      isActive: true,
                    ),
                  );
                },
                child: Text('Go to second screen'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Homepage',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
