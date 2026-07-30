import 'package:flutter/material.dart';
import 'package:lire/app/router.dart';

class LireApp extends StatelessWidget {
  const LireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Lire',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
    );
  }
}