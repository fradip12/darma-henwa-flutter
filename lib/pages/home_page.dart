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
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text('This is Alert Dialog'),
                        content: Text('Ini Alert Dialog'),
                        actions: [
                          TextButton(
                            onPressed: null,
                            child: Text('Approve'),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Text('Show Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('This is snackbar'),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                child: Text('Show Snackbar'),
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
