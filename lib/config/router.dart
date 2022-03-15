import 'package:coding_test/config/const.dart';
import 'package:coding_test/src/logic/cubit/challenge_cubit.dart';
import 'package:coding_test/src/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<ChallengeCubit>(
            create: (context) => ChallengeCubit()..getChallenge(),
            child: HomeScreen(),
          ),
        );
    }
    return null;
  }
}
