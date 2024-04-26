import 'package:apps_satu/controller/detail_controller.dart';
import 'package:apps_satu/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../arguments/detail_arguments.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String strData = '--';
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
                  ApiServices().getData().then((value) {
                    setState(() {
                      strData = value;
                    });
                  });
                },
                child: const Text('Get Data'),
              ),
              Text(strData),
            ],
          ),
        ),
      ),
    );
  }
}
