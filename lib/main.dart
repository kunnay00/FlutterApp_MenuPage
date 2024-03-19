import 'package:flutter/material.dart';
import 'pagemenu.dart'; // Jika kelas PageMenu didefinisikan di berkas terpisah

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 233, 233, 233),
      ),
      home: PageMenu(), 
    );
  }
}
