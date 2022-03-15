import 'package:coding_test/src/logic/cubit/challenge_cubit.dart';
import 'package:coding_test/src/presentation/screens/home_screen/widgets/class_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/class_model.dart';

class ClassDetails extends StatelessWidget {
  ClassDetails({Key? key}) : super(key: key);
  late List<ChallengeClass> classes;
  @override
  Widget build(BuildContext context) {
    classes = BlocProvider.of<ChallengeCubit>(context).challenge.classes;
    return Column(
      children: [
        _headerDetails(),
        _listBuilder(),
      ],
    );
  }

  Widget _headerDetails() {
    return Column(
      children: const [
        Text('Total Run Time'),
        Text('data'),
      ],
    );
  }

  Widget _listBuilder() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: classes.length,
      itemBuilder: (BuildContext context, int index) {
        return ClassItem.fromOverViewTap(
          classItem: classes[index],
          index: index,
        );
      },
    );
  }
}
