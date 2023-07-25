import 'package:flutter/material.dart';

class MyStyle extends StatelessWidget {
  const MyStyle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}