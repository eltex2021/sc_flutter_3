import 'package:flutter/material.dart';
import 'package:sc_flutter_3/screens/profile_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SC задание 3.2',
      home: ProfileScreen(),
    );
  }
}
