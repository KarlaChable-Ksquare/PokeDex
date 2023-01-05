import 'package:flutter/material.dart';

import '../function/type.dart';

class PokemonScreen extends StatelessWidget {
  dynamic data;
  PokemonScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        width: double.infinity,
        color: typeColor(data['type1']),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.catching_pokemon,
                      color: typeColor(data['type1']),
                      size: 65,
                    ),
                  ),
                  Text('# ${data['id']}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    data['name'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    data['form'] ?? '',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text('Type 1:  ${data['type1']}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(data['type2'] == null ? '' : 'Type 2:  ${data['type2']}',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text('Generation: ${data['generation']}',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal)),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('atk:  ${data['atk']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      Text('sta:  ${data['sta']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('def:  ${data['def']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      Text('maxcp:  ${data['maxcp']}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
