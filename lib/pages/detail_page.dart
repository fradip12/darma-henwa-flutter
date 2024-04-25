import 'package:apps_satu/controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pages'),
      ),
      // Listener
      body: Column(
        children: [
          Text('Consumer 1'),
          Consumer<DetailController>(
            builder: (context, data, widget) {
              return Center(
                child: Column(
                  children: [
                    Text(data.dataArguments?.text ?? '-'),
                    Switch(
                      value: data.dataArguments?.isActive ?? false,
                      onChanged: (_) {},
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              );
            },
          ),
          Text('Consumer 2'),
          Consumer<DetailController>(builder: (context, data, widget) {
            return Text(
                '${data.dataArguments?.text} : ${data.dataArguments?.isActive}');
          })
        ],
      ),
    );
  }
}
