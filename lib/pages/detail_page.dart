import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pages'),
      ),
      body: Center(
        child: Text('This is a second screen'),
      ),
    );
  }
}
