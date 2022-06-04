// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:catpedia/components/skeleton.dart';
import 'package:catpedia/helpers/request_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Breed {
  Breed({
    required this.id,
    required this.name,
  });
  final String id;
  final String name;

  factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        id: json['id'],
        name: json['name'],
      );
}

class Breedlist extends StatefulWidget {
  @override
  _BreedlistState createState() => _BreedlistState();
}

class _BreedlistState extends State<Breedlist> {
  final List<Breed> _breed = [];
  Future<List<Breed>> fetchJson() async {
    const url = 'https://api.thecatapi.com/v1/breeds';
    const key = '8f9719f3-c53c-4aa0-82f0-4107493d8c21';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri, headers: {"x-api-key": key});
    List<Breed> blist = [];

    if (response.statusCode == 200) {
      //log(response.body);
      var urjson = json.decode(response.body);
      for (var jsondata in urjson) {
        blist.add(Breed.fromJson(jsondata));
      }
    }
    return blist;
  }

  @override
  void initState() {
    fetchJson().then((value) {
      setState(() {
        _breed.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Text(_breed[index].id.toString()),
                Text(_breed[index].name.toString())
              ],
            ),
          );
        },
        itemCount: _breed.length,
      ),
    );
  }
}
