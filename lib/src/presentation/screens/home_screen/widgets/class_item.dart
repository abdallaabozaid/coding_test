import 'package:coding_test/src/data/model/class_model.dart';
import 'package:flutter/material.dart';

enum ViewType { type1, type2 }

class ClassItem extends StatelessWidget {
  const ClassItem({
    Key? key,
    required this.classItem,
    required this.index,
    required this.viewType,
  }) : super(key: key);
  final ChallengeClass classItem;
  final int index;
  final ViewType viewType;

  ClassItem.fromOverViewTap({
    required this.classItem,
    required this.index,
    this.viewType = ViewType.type1,
  });

  ClassItem.fromClassesTap({
    required this.classItem,
    required this.index,
    this.viewType = ViewType.type2,
  });

  @override
  Widget build(BuildContext context) {
    bool type2 = viewType == ViewType.type2;
    return SizedBox(
      width: 300,
      height: 300,
      child: Stack(
        children: [
          Image.network(
            classItem.classVideoImage,
            width: 300,
            height: 300,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.white,
            child: Text(
              index.toString(),
              style: const TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
