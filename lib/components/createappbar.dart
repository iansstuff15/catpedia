import 'package:flutter/material.dart';


Container createAppBar({required BuildContext context, required String title}){
  return  Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                              ),
                      )),
                        Container(
                          height: 30,
                          padding:
                            const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 232, 84, 104),
                            borderRadius: BorderRadius.circular(50)),
                          width: 220,
                          child: Text(title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
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
  );
}