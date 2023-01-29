import 'package:flutter/material.dart';

class SigninContents {
  final String title;
  final String image;
  final String desc;

  SigninContents(
      {required this.title, required this.image, required this.desc});
}

List<SigninContents> contents = [
  SigninContents(
    title: "Welcome to Mid",
    image: "assets/images/logo.png",
    desc: "Kepp your Health with you",
  ),

];
