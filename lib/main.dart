import 'package:flutter/material.dart';
import 'package:i_will_name_it_later/pages/app.dart';
import 'package:i_will_name_it_later/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: AppPage(),
    );
  }
}
