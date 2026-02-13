import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/di/service_locator.dart';
import 'package:flutter_mvvm_sample/view/coinlist_screen.dart';

void main() {
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinListScreen(),
    );
  }
}
