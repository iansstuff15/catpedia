// ignore_for_file: prefer_const_constructors

import 'package:catpedia/helpers/request_helper.dart';
import 'package:flutter/material.dart';

class BreedScreen extends StatelessWidget {
  const BreedScreen({Key? key}) : super(key: key);
  static String id = 'Breed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
          decoration: BoxDecoration(
            
          ),
          height: double.infinity,
          padding: EdgeInsets.only(left: 20, top: 10,right: 20),
          child:Stack(
        
        children: [
          
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
                              
                                onChanged: (value) async {
                                  String url =
                                      'https://api.thecatapi.com/v1/breeds/search?q=${value}';
                                  Uri uri = Uri.parse(url);
                                  var response = await RequestHelper.getRequest(
                                      uri,
                                      "8f9719f3-c53c-4aa0-82f0-4107493d8c21");
                                  if (response == null) {
                                  
                                    print(response.toString());
                                    return;
                                  }
                                  if (response != null) {
                                  
                                    print(response.toString());
                                  }
                                },
                               
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
            
            Positioned(
              top: 80,
              child:  ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: NetworkImage(
                'https://blog.xojo.com/wp-content/uploads/2015/10/Cat1.pngt1466486449161'),
          
          ),
        ),),
           
           Positioned(

                        bottom: 0,
                        child: 
                      Container(
                        height: 350,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 184, 179),
                        blurRadius: 15.0,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1),
                      )
                    ]
                        ),
                        child:Column(
                          children:[
                            Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 3,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3.0),
                  child: Image(
                    image: NetworkImage(
                        'https://cdn.britannica.com/73/3473-004-6E573BFA/Flag-Philippines.jpg'),
                    width: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
              
              ],
            ),
            
            Text('Commodo nostrud Lorem excepteur et cillum minim esse elit. Officia voluptate ullamco deserunt duis tempor exercitation minim eiusmod enim tempor Lorem culpa tempor. Deserunt anim velit duis sit. Est aliquip do culpa tempor.Id sunt elit laborum ullamco irure consectetur consectetur commodo labore sint eu. Ipsum officia commodo est magna dolore. In consectetur irure mollit ex. Et commodo voluptate labore ut ex nisi enim aute sunt ut. Ex esse irure excepteur est qui quis et elit minim adipisicing tempor sint et excepteur. Lorem laboris proident excepteur mollit exercitation elit labore Lorem dolor velit esse. Mollit veniam dolore ullamco sint in dolore pariatur laboris id aliqua ipsum aute duis.'),
             Container(
                margin: EdgeInsets.symmetric(horizontal:10,vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 184, 179),
                        blurRadius: 8.0,
                        spreadRadius: 0.5,
                        offset: Offset(1, 1),
                      )
                    ]
                ),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20,),
                    Row(
                      children: [ Text('Bookmark',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color.fromARGB(255, 255, 154, 187)),),
                    SizedBox(width: 8,),
                    Icon(Icons.bookmark,color: Color.fromARGB(255, 255, 154, 187)),],
                    ),
                   
                     SizedBox(width: 20,),
                  ],
                ),
              )
          ],
        ),
      ],
    )
                          ]
                        ) ,)
                      )
        ],
      ))),
    );
  }
}
