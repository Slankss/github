import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_application/Models/httpService.dart';

import 'Models/Pokemonlar.dart';



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
      builder: (BuildContext context, AsyncSnapshot<List<Pokemonlar>> snapshot){
        if(snapshot.hasData){
          List<Pokemonlar> pokemon = snapshot.data;
          return ListView(
           children: pokemon.map((Pokemonlar _pokemon) => ListTile(
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
