import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/AppPages.dart';
import 'constants/theme.dart';
import 'home/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}); // Use Key? key instead of super.key

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'Ostello',
      theme: ThemeClass.buildTheme(context),
      home: HomeScreen(),
      getPages: [
        GetPage(name: AppPages.HomePage,
            page: ()=>const HomeScreen())
      ],

    );
  }
}
