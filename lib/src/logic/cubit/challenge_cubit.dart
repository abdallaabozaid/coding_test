import 'package:bloc/bloc.dart';
import 'package:coding_test/src/data/model/challenge_model.dart';
import 'package:meta/meta.dart';

import '../../data/model/challenges_model.dart';
import '../../data/model/class_model.dart';
import '../../data/model/coach_model.dart';
import '../../data/model/post_model.dart';
import '../../data/repo/challenge_repo.dart';

part 'challenge_state.dart';

class ChallengeCubit extends Cubit<ChallengeState> {
  ChallengeCubit() : super(ChallengeInitial());
  ChallengeRepo? challengeRepo;

  late Challenge challenge;

  void getChallenge() async {
    // should be like the following :
    // final List<Challenge>? challenges =
    //     await challengeRepo!.creatChallengeRepo();

    // but have no time to make my json so :

    challenge = challenges.challengesList[0];
  }
}

Challenges challenges = Challenges(challengesList: [
  Challenge(
    challengePhoto:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjCptH-bBJchc6S2qCuBC7BXgzfY9Btq91CmporK3kwq_ip4c_t_gaCG6-dTsi9EDDCCU&usqp=CAU',
    challengeName: 'Yoga',
    challengeDescrp:
        'descreiption descreiption descreiption descreiption descreiption descreiption descreiption descreiption descreiption descreiption ',
    challengeDescrpVideoLink: 'https://www.youtube.com/watch?v=fxC7z0Rcwx4',
    difficulty: 'intermediate',
    intensity: '4',
    coach: Coach(
        coachName: 'Abdullah Abozadi',
        coachPhoto:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRih6twRiBzJfqQ2BVspJpTPpocIfF2idUZc0eYPksW2bk0fiEtjqnxiJl20K54NNJeznM&usqp=CAU',
        coachAbout: 'fitness coach fitness coach fitness coach '),
    classes: [
      ChallengeClass(
        classTitle: 'Introduction',
        classDuration: '1',
        classAboutInfo: 'classAboutInfo',
        classVideoImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRih6twRiBzJfqQ2BVspJpTPpocIfF2idUZc0eYPksW2bk0fiEtjqnxiJl20K54NNJeznM&usqp=CAU',
      ),
      ChallengeClass(
        classTitle: 'Introduction',
        classDuration: '1',
        classAboutInfo: 'classAboutInfo',
        classVideoImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRih6twRiBzJfqQ2BVspJpTPpocIfF2idUZc0eYPksW2bk0fiEtjqnxiJl20K54NNJeznM&usqp=CAU',
      ),
      ChallengeClass(
        classTitle: 'Introduction',
        classDuration: '1',
        classAboutInfo: 'classAboutInfo',
        classVideoImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRih6twRiBzJfqQ2BVspJpTPpocIfF2idUZc0eYPksW2bk0fiEtjqnxiJl20K54NNJeznM&usqp=CAU',
      ),
    ],
    communityPosts: [
      Post(title: 'First Post'),
      Post(title: 'second Post'),
      Post(title: 'third Post')
    ],
  )
]);
