import 'package:coding_test/src/presentation/screens/home_screen/widgets/text_wraper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/challenge_model.dart';
import '../../../../logic/cubit/challenge_cubit.dart';
import 'class_details.dart';

class OverviewTap extends StatelessWidget {
  OverviewTap({Key? key}) : super(key: key);
  late Challenge challenge;

  @override
  Widget build(BuildContext context) {
    challenge = BlocProvider.of<ChallengeCubit>(context).challenge;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _aboutText(),
          _aboutContent(),
          _aboutTheCoach(),
          ClassDetails(),
        ],
      ),
    );
  }

  Widget _aboutText() {
    return Text('About the classes');
  }

  Widget _aboutContent() {
    return TextWrapper(text: challenge.challengeDescrp);
  }

  Widget _aboutTheCoach() {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(challenge.coach.coachPhoto),
            ),
            Column(
              children: [
                Text('Instructor'),
                Text(challenge.coach.coachName),
              ],
            )
          ],
        ),
        TextWrapper(text: challenge.coach.coachAbout),
      ],
    );
  }
}
