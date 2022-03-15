import 'dart:convert';

class ChallengeClass {
  final String classTitle;
  final String classDuration;
  final String classAboutInfo;
  final String classVideoImage;
  ChallengeClass({
    required this.classTitle,
    required this.classDuration,
    required this.classAboutInfo,
    required this.classVideoImage,
  });

  factory ChallengeClass.fromMap(Map<String, dynamic> map) {
    return ChallengeClass(
      classTitle: map['classTitle'] ?? '',
      classDuration: map['classDuration'] ?? '',
      classAboutInfo: map['classAboutInfo'] ?? '',
      classVideoImage: map['classVideoImage'] ?? '',
    );
  }

  factory ChallengeClass.fromJson(String source) =>
      ChallengeClass.fromMap(json.decode(source));
}
