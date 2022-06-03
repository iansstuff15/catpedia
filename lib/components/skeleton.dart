// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SearchItemSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SkeletonAvatar(
          style: SkeletonAvatarStyle(
            width: 120,
            height: 80,
            borderRadius: BorderRadius.circular(10)
             ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: SkeletonParagraph(
            style: SkeletonParagraphStyle(
                lines: 3,
                spacing: 6,
                lineStyle: SkeletonLineStyle(
                  
                  height: 10,
                  borderRadius: BorderRadius.circular(8),
                
                )),
          ),
        )
      ],
    );
  }
}
