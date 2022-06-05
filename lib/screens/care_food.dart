// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  static String id = 'food';

    List title = [
      "Meat",
      "Whole Grains",
      "Fish",
      "Eggs",
      "Veggies",
      "Cheese",
    ];

    List par = [
      "Cats eat meat, plain and simple. They require protein from meat to maintain a healthy heart, vision, and reproductive system. Cooked beef, chicken, turkey, and small amounts of lean deli meats are excellent sources of protein. Your cat may become ill if it consumes raw or spoiled meat. ",
      "Oats have a high protein-to-calorie ratio and are simple to prepare. Many cats enjoy corn, and polenta, a coarsely ground cornmeal, has a pleasing texture. Brown rice, barley, and wheat berries can all be used, but they may need to be mashed first. Cats prefer smaller grains such as millet and couscous. Just make sure any grains you give your cat are cooked so they can be fully digested. Whole wheat breadcrumbs are also acceptable.",
      "Fish have a lot of omega-3 fatty acids, which help your cat's eyes stay sharp as well as help with arthritis, kidney disease, and heart disorders. Canned or cooked fish is fine for a treat. But don't share your shashimi or sushi with raw fish. Raw fish in general isn't a good idea.",
      "Eggs are another super source of protein for your cat. But make sure they're cooked. Like raw meat and fish, raw eggs can harm your kitty.",
      "Cats do not all like vegetables, and even fewer like fruits (because felines cannot taste sweet flavors). However, they are high in vitamins and fiber, as well as water, which aids digestion. Steamed broccoli or asparagus, fresh cucumber or cantaloupe But you might have a better chance slipping them a veggie burger — seriously — just make sure the patty doesn't contain onions or garlic.",
      "Cheese is a high-protein snack that is safe for your cat in moderation. However, cheese contains less 'complete' protein than meat, fish, and eggs. Also, many cats' stomachs are sensitive to dairy, so go easy on the cheesy treats and skip the milk saucer.",
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
                    color: Colors.yellow.shade700,
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
                'Foods for Cats',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/food_cat.jpg',
                        width: width_ * .900,
                        height: height_ * .400,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "People foods cats can eat",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The majority of your kitty's diet should consist of nutritionally complete cat food, but you can occasionally give them a treat from your plate. All you need to know is how to select feline-friendly snacks that are high in nutrients. If you do give them fish, make sure it's not raw.",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      text(context, title[0], par[0], 'assets/food_meat.jpg',
                          .900, .300),
                      text(context, title[1], par[1], 'assets/food_grains.jpg',
                          .900, .300),
                      text(context, title[2], par[2], 'assets/food_fish.jpg',
                          .900, .300),
                      text(context, title[3], par[3], 'assets/food_eggs.jpg',
                          .900, .300),
                      text(context, title[4], par[4], 'assets/food_veggies.jpg',
                          .900, .300),
                      text(context, title[5], par[5], 'assets/food_cheese.jpg',
                          .900, .300),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Foods Cats SHOULD NOT eat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "• Chocolate\n"
                        "• Grapes and raisins\n"
                        "• Onions and garlic\n"
                        "• Macadamia nuts\n"
                        "• Bread dough\n"
                        "• Alcohol\n"
                        "• Xylitol, an artificial sweetener found in sugar-free gum and candy",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Container text(BuildContext context, String title, String par, String pict,
    double width1, double height1) {
  double width_ = MediaQuery.of(context).size.width;
  double height_ = MediaQuery.of(context).size.height;

  return Container(
    child: Column(children: [
      SizedBox(height: 20),
      Text(
        "$title",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.redAccent,
        ),
      ),
      SizedBox(height: 10),
      Image.asset(
        "$pict",
        width: width_ * width1,
        height: height_ * height1,
      ),
      SizedBox(height: 15),
      Center(
        child: Text(
          "$par",
          textWidthBasis: TextWidthBasis.longestLine,
          style: TextStyle(fontSize: 20),
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
