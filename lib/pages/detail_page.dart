import 'package:apps_satu/arguments/detail_arguments.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final DetailArguments args;
  const DetailPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pages'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(args.text ?? '-'),
            Switch(
              value: args.isActive!,
              onChanged: (_) {},
              activeColor: Colors.green,
            ),
            ElevatedButton(
              onPressed: () {
                // Pop or Back to previous screen
                Navigator.pop(context);
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
