import 'package:flutter/material.dart';
import 'package:pokedex/router.dart';

import 'screen/pokedex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(),
      onGenerateRoute: RouterGenerator().routerGenerate,
      //initialRoute: '/pokedex',
      home: const PokedexScreen(),
    );
  }
}
