import 'dart:convert';

class Coach {
  final String coachName;
  final String coachPhoto;
  final String coachAbout;
  Coach({
    required this.coachName,
    required this.coachPhoto,
    required this.coachAbout,
  });

  // Map<String, dynamic> toMap() {
  //   return {
  //     'coachname': coachname,
  //     'coachPhoto': coachPhoto,
  //     'coachAbout': coachAbout,
  //   };
  // }

  factory Coach.fromMap(Map<String, dynamic> map) {
    return Coach(
      coachName: map['coachName'] ?? '',
      coachPhoto: map['coachPhoto'] ?? '',
      coachAbout: map['coachAbout'] ?? '',
    );
  }

  // String toJson() => json.encode(toMap());

  factory Coach.fromJson(String source) => Coach.fromMap(json.decode(source));
}
