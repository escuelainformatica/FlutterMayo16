import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import 'dart:convert';
import 'dart:convert' as convert;

import '../modelo/fotos.dart';
// import 'package:convert/convert.dart';

class PaginaListado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaginaListadoEstado();
  }
}

class PaginaListadoEstado extends State<PaginaListado> {
  List<Fotos> albums = [];

  PaginaListadoEstado() {
    cargar();
  }

  Future<List<Fotos>> cargar() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos');

    var response = await http.get(url);
    List<dynamic> jsonResponse;
    List<Fotos> valores;
    if (response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(response.body) as List<dynamic>;
      valores =
          jsonResponse.map<Fotos>((json) => Fotos.fromJson(json)).toList();
    } else {
      jsonResponse = [];
      valores = [];
    }

    setState(() {
      albums = valores;
    });
    return valores;
  }

  var productos = ["cocacola", "fanta", "sprite"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hola"),
        ),
        body: ListView.builder(
          itemCount: albums.length,
          itemBuilder: (context, i) {
            return Row(
              children: [
                Text(albums[i].albumId.toString()),
                VerticalDivider(
                  width: 10,
                ),
                Text(albums[i].id.toString()),
                VerticalDivider(
                  width: 10,
                ),
                Text(albums[i].title),
              ],
            );
          },
        ));
  }
}
