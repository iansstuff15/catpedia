// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Groom extends StatelessWidget {
  static String id = 'groom';

  List title = [
    "Brushing",
    "Bathing",
    "Nail Clipping",
  ];

  List par = [
    "Cats need regular brushing to keep their coats looking tidy, especially if they have long fur. Brushing also helps remove dirt and tangles while spreading healthy oils throughout their coat, keeping their skin and fur healthy and getting rid of irritation. \n\n• Use a metal comb to loosen dead fur, starting at their head and working toward the tail.\n•With a bristle or rubber brush, do the same thing to remove the dead hair.\n•Always be careful around your cat’s face, belly, and chest.",
    "If your cat needs a bath, you’ll know. They will either feel oily to the touch, or they will have gotten into something smelly or sticky. In these cases, you’ll need to get a brand of shampoo made for cats and give your cat a real bath.\n\nBrushing your cat not only removes dirt, grease and dead hair from her coat, but it helps to remove skin flakes and stimulates blood circulation, improving the overall condition of her skin. One or two brushings per week will help kitty to keep her healthy glow—and you’ll find that regular sessions are especially beneficial when your cat ages and is no longer able to groom so meticulously on her own.",
    "Your cat’s claws are often something you don’t think about until you get a pointed reminder that they’re too long. If you only pay attention to your cat’s feet when it’s time to trim their nails, then your cat may be upset at the unusual feeling.\nTo make everything easier, play with your cat’s feet when you’re not about to trim their nails. This helps them get used to the feeling so that they feel safe. It doesn’t hurt to praise your kitty and give them lots of treats while playing with their toes, either. After a couple of weeks of this, your cat will likely accept nail trims calmly.  ",
  ];

  @override
  Widget build(BuildContext context) {
    double width_ = MediaQuery.of(context).size.width;
    double height_ = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(children: [
            Row(children: [
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
              Container(width: width_ * .20, color: Colors.transparent),
              Text(
                'Grooming',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ]),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/catgroom.jpg',
                          // width: width_ * .900,
                          // height: height_ * .300,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Make Grooming as Enjoyable as Possible for Both of You",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The process of grooming your cat should be fun for you and for them. Try to schedule a grooming session for a time when your cat is already calm and sleepy, such as after dinner. You should also be in a good mood — your cat will notice if you’re grumpy or stressed during the grooming session, and this can stress them out in turn.",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      text(context, title[0], par[0]),
                      text(context, title[1], par[1]),
                      text(context, title[2], par[2]),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                  ]),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bookmark',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 154, 187)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.bookmark,
                      color: Color.fromARGB(255, 255, 154, 187))
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Container text(BuildContext context, String title, String par) {

  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 20),
      Text(
        "$title",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.pink,
        ),
      ),
      SizedBox(height: 10),
      SizedBox(height: 15),
      Center(
        child: Text(
          "$par",
          textWidthBasis: TextWidthBasis.longestLine,
          style: TextStyle(fontSize: 12),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Divider(
        height: 5,
        thickness: .5,
        color: Colors.grey,
      ),
    ]),
  );
}
