import 'package:test_application/Models/Pokemon.dart';

class ResponsePokemon {
  List<Pokemon> results;

  ResponsePokemon({this.results});

  factory ResponsePokemon.fromJson(Map<String, dynamic> json) {
    return ResponsePokemon(
      results: (json['results'] as List).map((e) => Pokemon.fromJson(e)).toList(),
    );
  }
}
