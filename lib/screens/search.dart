// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'dart:developer';

import 'package:catpedia/components/search_component.dart';
import 'package:catpedia/components/skeleton.dart';
import 'package:catpedia/helpers/request_helper.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  static String id = 'search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var focusSearch = FocusNode();
  var SearchString = TextEditingController();
  List<dynamic> searchItems = [];
  bool focused = false;
  void setFocus() {
    if (!focused) {
      FocusScope.of(context).requestFocus(focusSearch);
      focused = true;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setFocus();

    return Scaffold(
      body: SafeArea(
          child: Container(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 232, 84, 104),
                                borderRadius: BorderRadius.circular(50)),
                            width: 220,
                            child: TextField(
                                controller: SearchString,
                                onChanged: (value) async {
                                  String url =
                                      'https://api.thecatapi.com/v1/breeds/search?q=${value}';
                                  Uri uri = Uri.parse(url);
                                  var response = await RequestHelper.getRequest(
                                      uri,
                                      "8f9719f3-c53c-4aa0-82f0-4107493d8c21");
                                  if (response == null) {
                                    log(response.runtimeType.toString());
                                    print(response.toString());
                                    return;
                                  }
                                  if (response != null) {

                                    setState(() {
                                      searchItems = response;
                                    });                                  }
                                    
                                },
                                focusNode: focusSearch,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 250, 207, 204)),
                                  hintText: 'Search Breed',
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.info,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      /// Adding a space between the two widgets.
                      ///
                      SizedBox(
                        height: 20,
                      ),
                      // ListComponent(),

                      // SingleChildScrollView(child:
                      //      ListView.separated(
                      //   itemCount: 2,
                      //   separatorBuilder: (BuildContext context, int index) =>
                      //       const SizedBox(
                      //     height: 10,
                      //   ),
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return Text('here');
                      //   },
                      // )

                      // ,)

                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                          itemBuilder: (context, index) {
                            return ListComponent(searchItems[index],searchItems[index]['name'],searchItems[index]['description'],searchItems[index]['country_code']);
                          },
                          itemCount: searchItems.length,
                        ),
                      ),

                      // SearchItemSkeleton(),
                      //  SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  )))),
    );
  }
}
