import 'package:flutter/material.dart';
import 'package:vsecure/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      home: const LoginPage(),
    ),
  );
}
