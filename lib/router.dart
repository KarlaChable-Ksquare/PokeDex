import 'package:flutter/material.dart';
import 'screen/pokedex.dart';
import 'screen/pokemon.dart';

class RouterGenerator {
  var routerGenerate = ((settings) {
    var routerName = settings.name;
    var args = settings.arguments;

    switch (routerName) {
      case '/pokedex':
        return MaterialPageRoute(
            builder: (context) => const SafeArea(child: PokedexScreen()));

      case '/pokemon':
        return MaterialPageRoute(
            builder: (context) => SafeArea(child: PokemonScreen(data: args)));
    }
  });
}
