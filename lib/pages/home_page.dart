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
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index'),
                subtitle: Text('index of $index'),
                leading: FlutterLogo(),
                trailing: Icon(Icons.settings),
                onTap: () {
                  print('click item index : ');
                  print(index);
                },
              );
            },
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
