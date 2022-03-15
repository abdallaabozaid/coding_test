import '../api/challenge_api.dart';
import '../model/challenge_model.dart';
import '../model/challenges_model.dart';

class ChallengeRepo {
  final ChallengeApi challengeApi;

  ChallengeRepo(this.challengeApi);

  Future<List<Challenge>?> creatChallengeRepo() async {
    final challengeJson = await challengeApi.getChallengeJson();
    if (challengeJson == null) {
      return null;
    } else {
      final challengeRepo = Challenges.fromJson(challengeJson);
      return challengeRepo.challengesList;
    }
  }
}
