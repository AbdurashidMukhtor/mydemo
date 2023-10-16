import 'package:flutter/material.dart';
import 'package:mydemo/pages/Detail_Page.dart';
import 'package:mydemo/pages/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomePage(),
      routes: {
        DetailPage.id: (context) => DetailPage(""),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
