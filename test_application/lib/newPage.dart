import 'package:flutter/material.dart';
import 'package:test_application/Models/ResponsePokemon.dart';
import 'package:test_application/Models/httpService.dart';

import 'Models/Pokemon.dart';

class newPage extends StatefulWidget {
  @override
  _newPageState createState() => _newPageState();
}



class _newPageState extends State<newPage> {
  final httpService _httpService = httpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Yeni Sayfa"),
        ),
        body: buildBody(context)


    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
      future: _httpService.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<ResponsePokemon> snapshot){
        if(snapshot.hasData){
          List<Pokemon> pokemon = snapshot.data.results;
          return ListView(
           children: pokemon.map((Pokemon _pokemon) => ListTile(
             title: Text(_pokemon.name),
           )
           ).toList(),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
