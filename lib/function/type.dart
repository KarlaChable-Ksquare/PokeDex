import 'package:flutter/material.dart';

Color typeColor(String type) {
  switch (type) {
    case 'bug':
      return Color(0xFF92bd2d);

    case 'dark':
      return Color(0xFF595761);

    case 'dragon':
      return Color(0xFF0c6ac8);

    case 'electric':
      return Color(0xFFf2d94e);

    case 'fairy':
      return Color(0xFFef90e6);

    case 'fighing':
      return Color(0xFFd3425f);

    case 'fire':
      return Color(0xFFfba64c);

    case 'fly':
      return Color(0xFFa1bbec);

    case 'ghost':
      return Color(0xFF5f6dbc);

    case 'grass':
      return Color(0xFF60bd58);

    case 'ground':
      return Color(0xFFda7c4d);

    case 'ice':
      return Color(0xFF76d1c1);

    case 'normal':
      return Color(0xFFa0a29f);

    case 'poison':
      return Color(0xFFb763cf);

    case 'psychic':
      return Color(0xFFfa8582);

    case 'rock':
      return Color(0xFFc9bc8a);

    case 'steel':
      return Color(0xFF5795a3);

    case 'water':
      return Color(0xFF539ddf);

    default:
      return Colors.black;
  }
}
