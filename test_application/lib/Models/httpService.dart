import 'dart:convert';
import 'package:http/http.dart';

import 'Pokemonlar.dart';

class httpService{
  final String url = "https://pokeapi.co/api/v2/pokemon/";

  Future<List<Pokemonlar>> getPosts() async{
    Response res = await get(url);

    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);

      List<Pokemonlar> pokemon = 
         body.map((dynamic item) => Pokemonlar.fromJson(item)).toList();

      return pokemon;
    }
    else{
      throw "Yüklenemedi.";
    }
  }
}