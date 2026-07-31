import 'package:flutter/material.dart';

import 'router.dart';
import 'theme/app_theme.dart';

class LireApp extends StatelessWidget {
  const LireApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Lire',
      debugShowCheckedModeBanner: false,

      routerConfig: appRouter,

      theme: AppTheme.light,
      darkTheme: AppTheme.dark,

      themeMode: ThemeMode.system,
    );
  }
}