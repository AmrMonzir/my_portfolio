import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/portfolio/widgets/portfolio_card.dart';

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
