// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UsersModel {
  final String name;
  final String image;
  final int posts;
  final int followers;
  final int following;

  UsersModel({
    required this.name,
    required this.image,
    required this.posts,
    required this.followers,
    required this.following,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'posts': posts,
      'followers': followers,
      'following': following,
    };
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
      name: map['name'] as String,
      image: map['image'] as String,
      posts: map['posts'] as int,
      followers: map['followers'] as int,
      following: map['following'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsersModel.fromJson(String source) => UsersModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
