import 'package:flutter/material.dart';


Container createAppBar({required BuildContext context, required String title}){
  return Container(
                height: 50,
                color: const Color.fromARGB(255, 151, 123, 10),
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back,
                        color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                        ),
                      Text(title,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white
                        )
                      ),
                      const SizedBox(),
                  ],
                )
              );
}