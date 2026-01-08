import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS || Platform.isMacOS
        ? CupertinoApp(
            theme: const CupertinoThemeData(brightness: Brightness.light),
            home: const HomeScreen(),
          )
        : MaterialApp(
            theme: ThemeData(useMaterial3: true),
            home: const HomeScreen(),
          );
  }
}