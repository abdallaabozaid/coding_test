import 'dart:convert';

class Post {
  final String title;
  Post({
    required this.title,
  });

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      title: map['title'] ?? '',
    );
  }

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));
}
