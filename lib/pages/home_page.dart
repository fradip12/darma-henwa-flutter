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
              FutureBuilder(
                future: ApiServices().getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Column(
                      children: [
                        CircularProgressIndicator(),
                        Text('Waiting ..... '),
                      ],
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: [
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.amberAccent,
                          ),
                          child: Column(
                            children: [
                              Text(snapshot.data?['title']),
                              Text(snapshot.data?['description']),
                              Text(snapshot.data?['category']),
                              Text(snapshot.data!['price'].toString()),
                            ],
                          ),
                        )
                        // Text(snapshot.data ?? '-'),
                      ],
                    );
                  }
                  return const Text('--');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
