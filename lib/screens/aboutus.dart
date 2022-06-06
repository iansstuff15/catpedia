import 'package:flutter/material.dart';
import 'package:catpedia/components/createappbar.dart';
import 'package:catpedia/components/cardcreator.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
  return SafeArea(
        child: Scaffold(
          backgroundColor:Color.fromARGB(210, 255, 255, 255),
          body: Column(
            children: [
              createAppBar(context: context, title: 'About us'),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   <Widget>[
                      const SizedBox(
                        height: 20
                      ),
                      CardCreator(name: "Jael, Zehll Fierran Day D.", image: 'profpic.jpg', email: 'qzfddjael@tip.edu.ph'),
                      CardCreator(name: "Bormate, Kristian Dereck D.", image: 'Kprofpic.jpg', email: 'qkddbormate@tip.edu.ph'),
                      CardCreator(name: "Manalastas, Aryanna B. ", image: 'YProf_pic.png', email: 'qagbmanalastas@tip.edu.ph'),
                      CardCreator(name: "Melegrito, John Adrian T.", image: 'Aprofpic.jpg', email: 'qjatmelegrito@tip.edu.ph'),
                      CardCreator(name: "Powell, Dirangen D.", image: 'Dprofpic.jpg', email: 'qdldppowell@tip.edu.ph'),
                      const SizedBox(
                        height: 20
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      );    
  }
}
// SafeArea Aboutus({required BuildContext context}) {
//   return SafeArea(
//         child: Scaffold(
//           backgroundColor: const Color.fromARGB(255, 165, 163, 163),
//           body: Column(
//             children: [
//               createAppBar(context: context, title: 'About us'),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children:   <Widget>[
//                       const SizedBox(
//                         height: 20
//                       ),
//                       CardCreator(name: "Jael, Zehll Fierran Day D.", image: 'profpic.jpg', email: 'qzfddjael@tip.edu.ph'),
//                       CardCreator(name: "Bormate, Kristian Dereck D.", image: 'Kprofpic.jpg', email: 'qkddbormate@tip.edu.ph'),
//                       CardCreator(name: "Manalastas, Aryanna B. ", image: 'YProf_pic.png', email: 'qagbmanalastas@tip.edu.ph'),
//                       CardCreator(name: "Melegrito, John Adrian T.", image: 'Aprofpic.jpg', email: 'qjatmelegrito@tip.edu.ph'),
//                       CardCreator(name: "Powell, Dirangen D.", image: 'Dprofpic.jpg', email: 'qdldppowell@tip.edu.ph'),
//                       const SizedBox(
//                         height: 20
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ),
//       );
// }