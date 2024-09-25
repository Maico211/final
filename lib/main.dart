import 'package:flutter/material.dart';
import 'package:shoeapp/Home.dart';
import 'package:provider/provider.dart';
import 'CartModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=> CartModel(),
      child: const ShoeApp(),
    )
  );
}

class ShoeApp extends StatelessWidget {
  const ShoeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
