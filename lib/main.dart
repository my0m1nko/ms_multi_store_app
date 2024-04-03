import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ms_multi_store/views/buyers/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      )
    );
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'MS Multi Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Brand-Bold'
      ),
      home: const MainScreen(),
    );
  }
}