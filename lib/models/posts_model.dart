// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_fundamentos/models/users_model.dart';

class PostsModel {
  final UsersModel user;
  final String image;
  final String description;
  final List<String> comments;

  PostsModel({
    required this.user,
    required this.image,
    required this.description,
    required this.comments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user.toMap(),
      'image': image,
      'description': description,
      'comments': comments,
    };
  }

  factory PostsModel.fromMap(Map<String, dynamic> map) {
    return PostsModel(
      user: UsersModel.fromMap(map['user'] as Map<String, dynamic>),
      image: map['image'] as String,
      description: map['description'] as String,
      comments: List<String>.from(
        (map['comments'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PostsModel.fromJson(String source) => PostsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
