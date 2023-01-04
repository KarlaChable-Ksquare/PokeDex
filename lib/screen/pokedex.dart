import 'package:flutter/material.dart';

import '../function/type.dart';
import '../service/pokedex_service.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pokemon');
            },
            icon: const Icon(Icons.catching_pokemon_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: PokedexService().fetchPokemon(),
              builder:
                  ((BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                if (snapshot.hasData) {
                  List<dynamic> pokemones = snapshot.data!;
                  return Expanded(
                      child: ListView.builder(
                    itemCount: pokemones.length,
                    itemBuilder: (BuildContext context, int index) {
                      final pokemon = pokemones[index];
                      return GestureDetector(
                        onTap: (() {
                          Navigator.pushNamed(context, '/pokemon', arguments: {
                            'id': pokemon['id'].toString(),
                            'pokemonId': pokemon['pokemonId'],
                            'name': pokemon['name'],
                            'form': pokemon['form'],
                            'type1': pokemon['type1'],
                            'type2': pokemon['type2'],
                            'generation': pokemon['generation'].toString(),
                            'atk': pokemon['atk'].toString(),
                            'sta': pokemon['sta'].toString(),
                            'def': pokemon['def'].toString(),
                            'maxcp': pokemon['maxcp'].toString()
                          });
                        }),
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          child: ListTile(
                            trailing: Text(pokemon['type1']),
                            leading: CircleAvatar(
                              backgroundColor: typeColor(pokemon['type1']),
                              child: const Icon(
                                Icons.catching_pokemon,
                                color: Colors.white,
                              ),
                            ),
                            title: Text(pokemon['pokemonId'].toString()),
                            subtitle: Text(pokemon['form'] ?? ''),
                          ),
                        ),
                      );
                    },
                  ));
                }
                if (snapshot.hasError) {
                  return const Text('Error');
                }
                return const Center(
                    heightFactor: 20,
                    widthFactor: 20,
                    child: CircularProgressIndicator(
                      color: Colors.redAccent,
                    ));
              }))
        ],
      ),
    );
  }
}
