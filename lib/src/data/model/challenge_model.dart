import 'dart:convert';

import 'package:coding_test/src/data/model/class_model.dart';
import 'package:coding_test/src/data/model/coach_model.dart';
import 'package:coding_test/src/data/model/post_model.dart';

class Challenge {
  final String challengeName;
  final String challengePhoto;
  final String difficulty;
  final String intensity;

  final String challengeDescrp;
  final String challengeDescrpVideoLink;
  final Coach coach;
  final List<ChallengeClass> classes;
  final List<Post> communityPosts;
  Challenge({
    required this.challengeName,
    required this.challengePhoto,
    required this.difficulty,
    required this.intensity,
    required this.challengeDescrp,
    required this.challengeDescrpVideoLink,
    required this.coach,
    required this.classes,
    required this.communityPosts,
  });

  factory Challenge.fromMap(Map<String, dynamic> map) {
    return Challenge(
      challengeName: map['challengeName'] ?? '',
      challengePhoto: map['challengePhoto'] ?? '',
      difficulty: map['difficulty'] ?? '',
      intensity: map['intensity'] ?? '',
      challengeDescrp: map['challengeDescrp'] ?? '',
      challengeDescrpVideoLink: map['challengeDescrpVideoLink'] ?? '',
      coach: Coach.fromMap(map['coach']),
      classes: List<ChallengeClass>.from(
          map['classes']?.map((x) => ChallengeClass.fromMap(x))),
      communityPosts:
          List<Post>.from(map['communityPosts']?.map((x) => Post.fromMap(x))),
    );
  }

  factory Challenge.fromJson(String source) =>
      Challenge.fromMap(json.decode(source));
}
