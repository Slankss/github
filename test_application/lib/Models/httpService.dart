import 'dart:convert';
import 'package:http/http.dart';
import 'package:test_application/Models/ResponsePokemon.dart';

import 'Pokemonlar.dart';

class httpService{
  final String url = "https://pokeapi.co/api/v2/pokemon/";

  Future<ResponsePokemon> getPosts() async{
    Response res = await get(url);

    if(res.statusCode == 200){
      ResponsePokemon body = ResponsePokemon.fromJson(jsonDecode(res.body));
      return body;
    }
    else{
      throw "Yüklenemedi.";
    }
  }
}