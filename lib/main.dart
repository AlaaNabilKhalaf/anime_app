import 'package:anime_app/my_provider/bottom_navigation.dart';
import 'package:anime_app/viwe/my_home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) {
        return bottom_navigation();
      },
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

