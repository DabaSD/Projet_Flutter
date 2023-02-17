import 'package:flutter/material.dart';
import 'package:projet_flutter/login.dart';

import 'package:projet_flutter/NouvelleCandidature.dart';

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
      initialRoute: 'candidature',
      routes: {
        'login': (context) => const MyLogin(),
        'candidature': (context) => const MyCandidature(),
      },
    );
  }
}
