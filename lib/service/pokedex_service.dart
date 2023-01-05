import 'dart:convert';

import 'package:http/http.dart' as http;

class PokedexService {
  Future fetchPokemon() async {
    const url = 'https://db.pokemongohub.net/api/pokemon/with-generation/1';
    final uri = Uri.parse(url);

    List pokemones = [];
    try {
      await http.get(uri).then((response) {
        pokemones = jsonDecode(response.body);
        //return pokemones;
        //print(pokemones);
      });
    } catch (e) {
      print(e);
    }
    return pokemones;
  }
}

void main() async {
  var pokemones = await PokedexService().fetchPokemon();
  //print(pokemones[0]);
}
