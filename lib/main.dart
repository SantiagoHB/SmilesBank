import 'package:flutter/material.dart';
import 'screens/Autenticacion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 108, 49, 218),
      primarySwatch: Colors.blue,
      iconTheme: const IconThemeData (color: Colors.white),
    ),
    home: const Autenticacion()
  );
  }
  
}
