import 'package:apps_satu/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        leading: const Icon(Icons.arrow_back),
        actions: const [
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
                future: ProductController().getData(),
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return Expanded(
                      child: GridView.builder(
                        itemCount: snapshot.data?.products?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          final item = snapshot.data?.products?[index];
                          return GestureDetector(
                            onTap: () {
                              print(item?.id);
                              // ProductController().getDetail(id);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 80,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          'https://picsum.photos/200/300',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    item?.title ?? '-',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(item?.category ?? '-'),
                                  Text('Rp. ${item?.price}'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }

                  return const Text('test');
                },
              )
              // Expanded(
              //   child: Consumer<ProductController>(
              //     builder: (context, data, widget) {
              //       return ListView.builder(
              //         itemCount: data.data?.total,
              //         itemBuilder: (_, index) {
              //           return Text(
              //               data.data?.products?[index].title ?? 'N/A');
              //         },
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
