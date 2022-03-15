import 'package:coding_test/src/logic/cubit/challenge_cubit.dart';
import 'package:coding_test/src/presentation/screens/home_screen/widgets/classes_tap.dart';
import 'package:flutter/material.dart';

import 'package:coding_test/src/data/model/challenge_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/community_tap.dart';
import 'widgets/overview_tap.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  late Challenge challenge;

  @override
  Widget build(BuildContext context) {
    challenge = BlocProvider.of<ChallengeCubit>(context).challenge;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _appBar(),
        body: TabBarView(
          children: [
            OverviewTap(),
            const ClassesTap(),
            const CommunityTap(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        challenge.challengeName,
      ),
      flexibleSpace: Image.network(
        challenges.challengesList[0].challengePhoto,
        fit: BoxFit.cover,
        height: 200,
      ),
      centerTitle: true,
      bottom: _tapBar(),
    );
  }

  TabBar _tapBar() {
    return const TabBar(
      indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
      indicatorWeight: 3,
      labelColor: Colors.white,
      indicatorColor: Colors.white,
      labelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      tabs: [
        Tab(
          text: 'Overview',
        ),
        Tab(
          text: 'Classes',
        ),
        Tab(
          text: 'Community',
        ),
      ],
    );
  }

  Widget _challengeInfo() {
    return Column(
      children: [
        Text(
          challenge.challengeName,
        ),
        Text(
          challenge.coach.coachName,
        ),
      ],
    );
  }

  Widget _startButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Start Practicing'),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
      ),
    );
  }
}
