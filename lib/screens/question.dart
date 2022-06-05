import 'package:flutter/material.dart';
import 'package:animations/animations.dart';


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
              color: Color.fromARGB(89, 226, 208, 52)
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
              child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text('Hello')),
            );
}