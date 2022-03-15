import 'package:coding_test/src/data/model/challenge_model.dart';

class Challenges {
  List<Challenge> challengesList;
  Challenges({
    required this.challengesList,
  });

  factory Challenges.fromMap(Map<String, dynamic> map) {
    return Challenges(
      challengesList: List<Challenge>.from(
          map['challengesList']?.map((x) => Challenge.fromMap(x))),
    );
  }

  factory Challenges.fromJson(Map<String, dynamic> source) =>
      Challenges.fromMap(source);
}
