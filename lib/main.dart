import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'presentation/pages/splash_screen.dart';
import 'presentation/providers/button_providers.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ButtonProviders(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
