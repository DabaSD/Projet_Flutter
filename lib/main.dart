import 'package:flutter/material.dart';
import 'package:projet_flutter/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'newposte',
        routes: {
          'login': (context) => const MyLogin(),
        });
  }
}
class MyNew extends StatelessWidget{
  const MyNew ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'newposte',
        routes: {
          'newposte':(context) => const MyNew()
        });
  }
}

