import 'package:apps_satu/controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/resto_controller.dart';

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
          Consumer<RestoController>(
            builder: (_, controller, __) {
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    final item = controller.data[index];
                    return ListTile(
                      title: Text(item.nama ?? '-'),
                      subtitle: Text(item.location ?? '-'),
                      leading: Image.network(item.imageUrl!),
                      trailing: Text(item.rating.toString()),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
