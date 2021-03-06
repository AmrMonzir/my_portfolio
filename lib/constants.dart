import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/portfolio/widgets/project_card_desktop.dart';

const kAppBarButtonTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w500);

const kPrimaryColor = Color(0xff1b2023);

const kAccentColor = Color(0xffc5c178);

const kSampleTextStyle = TextStyle(color: Colors.white, fontSize: 60);

List<Widget> kAppCards = [
  ProjectCard(
    imageURL: "assets/images/my_sources/banner.png",
    urlToLaunch:
        "https://play.google.com/store/apps/details?id=com.amrmonzir.my_sources",
    description:
        "A drive-like app to save and view images, videos and files as well as saved Social Media posts!",
  ),
  ProjectCard(
    imageURL: "assets/images/munchy/logo.jpg",
    urlToLaunch: "https://github.com/AmrMonzir/munchy",
    description:
        "An app to view, make and create recipes as well as manage the collection of ingredients in your house.",
  ),
  ProjectCard(
    imageURL: "assets/images/compagno/logo.jpg",
    urlToLaunch: "https://github.com/AmrMonzir/sample_compagno",
    description:
        "A sample app I created for Compagno Worldwide. It has great design aspects.",
  ),
  ProjectCard(
    imageURL: "assets/images/health_tracker/screenshot.jpg",
    description:
        "A health point tracking system that can sync data in the background, created for a client.",
  ),
  ProjectCard(
    imageURL: "assets/images/bmi/screenshot.jpg",
    description:
        "A simple BMI Calculator app I created while learning, it takes users' age, weight, height and gender to calculate BMI.",
  ),
  ProjectCard(
    imageURL: "assets/images/weather/screenshot.jpg",
    description:
        "A Weather tracking app built using the AccuWeather API, it uses geolocation and gps and employs REST API calls.",
  ),
  ProjectCard(
    imageURL: "assets/images/flash_chat/logo.jpg",
    description:
        "A chat application built upon Firebase to facilitate communication between two people in fluid simple design.",
  ),
];

List<Widget> kWebCards = [
  ProjectCard(
    imageURL: "assets/images/portfolio.JPG",
    urlToLaunch: "https://amrmonzir.github.io/",
    description:
        "A website created using Flutter Web to display my portfolio projects",
  ),
];

const String kAboutText =
    '''Amr is a passionate freelance software developer with experience in C# (Unity3D, .Net), C++, Java (Android), and currently in love with Flutter and going through its stages in learning best practices and developing his suite of skills.\n\nGraduated in 2019 as a Computer Engineer, and having since worked on multiple projects and learned quite a lot of frameworks and packages in mobile and backend development.\n\nAmr is always on the look out for new and exciting opportunities!''';

const String kClientCommentText =
    "Amr has multiple significant traits, such as being articulate and disciplined with his work. He takes good care of the work he does. He is substantially creative as well as professional. I enjoyed working with him immensely, and would love to keep the flow of projects going.";

const String kContactText =
    "If you liked what you saw so far, and you have something I could help you with, send me an email and let's discuss it!";

const String kPortfolioText =
    "Have a glimpse of what my clients think about my work! Maybe you can be the next one?";
