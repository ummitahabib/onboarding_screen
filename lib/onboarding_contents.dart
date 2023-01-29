import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "All Specilist in one place",
    image: "assets/images/image1.png",
    desc: "Amet minim mollit non deserunt ullamco est met minim mollit non deserunt ullamco est",
  ),
  OnboardingContents(
    title: "Get accessible Medical Data  record",
    image: "assets/images/image2.png",
    desc:
        "Amet minim mollit non deserunt ullamco est met minim mollit non deserunt ullamco est",
  ),
  OnboardingContents(
    title: "Consult a specialist online",
    image: "assets/images/image3.png",
    desc:
        "Amet minim mollit non deserunt ullamco est met minim mollit non deserunt ullamco est.",
  ),
];
