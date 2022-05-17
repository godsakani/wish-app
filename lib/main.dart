import 'package:flutter/material.dart';
import 'package:wish/wishScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromARGB(174, 44, 111, 228),
        appBar: AppBar(
          title:Text("Make A wish"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(174, 44, 111, 228),
        ),
        body: WishScreen(),
      ),
    );
  }
}
