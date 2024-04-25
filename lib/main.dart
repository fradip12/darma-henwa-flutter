import 'package:apps_satu/controller/detail_controller.dart';
import 'package:apps_satu/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Entry Point applikasi
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DetailController>(create: (_) => DetailController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // Registering Routing
        initialRoute: '/homepage',
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}
