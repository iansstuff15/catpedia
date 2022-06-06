// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'dart:convert';
// import 'dart:developer';
// import 'dart:ffi';

// import 'package:catpedia/components/skeleton.dart';
// import 'package:catpedia/helpers/request_helper.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:skeletons/skeletons.dart';
import 'package:catpedia/components/createappbar.dart';
import 'package:catpedia/screens/info.dart';
class Img{
  Img({
    required this.url,
  });
  final String url;
  factory Img.fromJson(Map<String, dynamic> json) => Img(
      url: json['url']
  );
}

class Breed {
  Breed({
    required this.id,
    required this.name,
    required this.country_code,
    required this.description
  //  required this.image_url
  });

  final String id;
  final String name;
  final String country_code;
  final String description;
//  final String image_url;

  factory Breed.fromJson(Map<String, dynamic> json,) => Breed(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        country_code: json['country_code'] == "SP" ? "SG" : json['country_code'],
        // image_url: json['image']['url'],
        // image_url: flag ? json['image']['url']:'assets/hero.png',
        // Add bool flag in paramter
      );
  
}

class Breedlist extends StatefulWidget {
  static String id = 'breedlist';
  @override
  _BreedlistState createState() => _BreedlistState();
}

class _BreedlistState extends State<Breedlist> {
  final List<Img> img=[];
  final List<Breed> _breed = [];
  bool _isLoading = true;
  Future<List<Breed>> fetchJson() async {
    final assetBundle = DefaultAssetBundle.of(context);
    final imgdata = await assetBundle.loadString('assets/img.json');
    final imgbody =json.decode(imgdata);
    for (var imgdata in imgbody ){
      img.add(Img.fromJson(imgdata));

    }
    const url = 'https://api.thecatapi.com/v1/breeds';
    const key = '8f9719f3-c53c-4aa0-82f0-4107493d8c21';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri, headers: {"x-api-key": key});
    List<Breed> blist = [];

    if (response.statusCode == 200) {
      var urjson = json.decode(response.body);
      for (var jsondata in urjson) {
        // var flag = jsondata['name'];
        // bool checkflag = flag=='European Burmese' || flag == 'Malayan' ? false:true; 
        // blist.add(Breed.fromJson(jsondata, checkflag));
        blist.add(Breed.fromJson(jsondata));
      }
    }
    setState(() {
      _isLoading = false;
    });
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
        body:SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  
                children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'General Care',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.pink),
                ),
                SizedBox(
                  width: 10,
                )
              ]),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return Container(
                        height: 200,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                          child: Stack(
                            alignment: Alignment.center,
                            children:[
                              !_isLoading ? 
                              Ink.image(
                                image: NetworkImage(img[index].url.toString()),
                                fit: BoxFit.cover,
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Catinfo(
                                      imgurl: img[index].url.toString(), desc: _breed[index].description.toString(), name: _breed[index].name.toString(),)));
                                  },
                                ),
                              ) : SkeletonAvatar(
                                style: SkeletonAvatarStyle(
                                  height: double.infinity,
                                  width: double.infinity,
                                  shape: BoxShape.rectangle
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network('https://countryflagsapi.com/png/${_breed[index].country_code.toString().toLowerCase()}',
                                    height: 35,
                                    width: 35,
                                  ),
                                  
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Text(_breed[index].name.toString(),
                                      style: TextStyle(
                                          fontSize: 25,
                                          foreground: Paint()
                                            ..style=PaintingStyle.stroke
                                            ..strokeWidth=6
                                            ..color=Colors.black
                                      ),),
                                      Text(_breed[index].name.toString(),
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white
                                        ),),
                                    ]
                                  )
                                ],
                              ),
              
              
                            ],
                          ),
              
                            /*child: Stack(
                              alignment: Alignment.center,
                              children:[
                                _breed[index].image_url == 'assets/hero.png' ?
                                Ink.image(
                                  image: AssetImage('assets/hero.png'), //placeholder img
                                  fit: BoxFit.fitHeight,
                                  child: InkWell(
                                    onTap: (){},
                                  ),
                                ) : 
                                Image.network(_breed[index].image_url.toString()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network('https://countryflagsapi.com/png/${_breed[index].country_code.toString().toLowerCase()}',
                                      width: 25,
                                      height: 25,
                                    ),
                                    Text(_breed[index].name.toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),),
                                  ],
                                ),
                              ],
                            )*/
                        )
                    );
                  },
                  itemCount: _breed.length,
                ),
              ),
            ],
          ),
        ));
  }
}
