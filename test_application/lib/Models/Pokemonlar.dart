import 'package:flutter/cupertino.dart';

class Pokemonlar{
  final String name;
  final String url;

  Pokemonlar({
    @required this.name,
    @required this.url,
  });

  factory Pokemonlar.fromJson(Map<String,dynamic> json) {
    return Pokemonlar(
       name : json['name'] as String,
       url : json['url'] as String,
    );
  }

}