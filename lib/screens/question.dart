import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatefulWidget {
  static String id = "question";
  @override
  State<Question> createState() => _Question();
}

class _Question extends State<Question> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 40,
              width: double.infinity,
              color:const Color.fromARGB(89, 226, 208, 52)
            ),
          ),
          OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: (BuildContext _, VoidCallback openContainer){
                return ListTile(
                  leading: const Text('TTP'),
                  title: const Text('Traversing the app'),
                  onTap: openContainer,
                  );
          
            }, 
            openBuilder: (BuildContext _, VoidCallback __){
              return _TutorialContent(context: context);
            }
          ),

          OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: (BuildContext _, VoidCallback openContainer){
                return ListTile(
                  leading: const Text('AS'),
                  title: const Text('About us'),
                  onTap: openContainer,
                  );
          
            }, 
            openBuilder: (BuildContext _, VoidCallback __){
              return _Aboutus(context: context);
            }
          ),          
        ],),
      ),
    );
  }
}

SafeArea _TutorialContent({required BuildContext context}) {
  return SafeArea(
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text('Hi')),
            );
}

SafeArea _Aboutus({required BuildContext context}) {
  return SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 165, 163, 163),
          appBar: AppBar(

            title: const Text("About us"),
            backgroundColor: const Color.fromARGB(255, 151, 123, 10),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   <Widget>[
                      _CardCreator(name: "Jael, Zehll Fierran Day D.", image: 'profpic.jpg', email: 'qzfddjael@tip.edu.ph'),
                      _CardCreator(name: "Bormate, Kristian Dereck D.", image: 'Kprofpic.jpg', email: 'qkddbormate@tip.edu.ph'),
                      _CardCreator(name: "Manalastas, Aryanna B. ", image: 'YProf_pic.png', email: 'qagbmanalastas@tip.edu.ph'),
                      _CardCreator(name: "Melegrito, John Adrian T.", image: 'Aprofpic.jpg', email: 'qjatmelegrito@tip.edu.ph'),
                      _CardCreator(name: "Powell, Dirangen D.", image: 'Dprofpic.jpg', email: 'qdldppowell@tip.edu.ph'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      );
}

Row _CardCreator({required String name, required String image, required String email}){
  return 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/$image'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text('CS Student',
                        style: GoogleFonts.macondo(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                             ],
                      ),
                 Column(children: [
                     Text(name,
                      style: GoogleFonts.trirong(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,                   
                      )
                     ),
                    const SizedBox(
                       width: 250,
                       height: 60,      
                       child: Card(
                         child: ListTile(
                           contentPadding: EdgeInsets.symmetric(horizontal:10),
                           leading: Icon(Icons.phone),
                           title: Text("09121124323",
                            style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),
                           )
                         )
                       ),
                     ),
                    SizedBox(
                       width: 250,
                       height: 60,
                       child: Card(
                         child: ListTile(
                           contentPadding: const EdgeInsets.symmetric(horizontal:10),
                           leading: const Icon(Icons.email),
                           title: Text(email,
                           style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
                           ),
                         )
                       ),
                     )
                    ]          
                    ),


              ],);
}