// import 'dart:ffi';
// import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InformationTab {
  InformationTab({
    required this.topic,
    required this.channel,
    // required this.category,
    required this.date,
    required this.likes,
    required this.articles,
    required this.followers,
    required this.following,
    required this.articlesNumber,
    required this.comments,
    required this.image,
    required this.table,
    Key? key,
  });
  String table;
  String topic;
  String channel;
  String date;
  int likes;
  int followers;
  int comments;
  int following;
  int articlesNumber;
  Image image;

  // List category;
  String articles;
}

List<InformationTab> information = [
  InformationTab(
    table: 'Cameroon Mininster Officials bent on Not Legalizing and Welcoming LGBTQ in the Country',
      topic: "News Topic Goes Here",
      channel: 'My Media',
      date: 'Date',
      likes: 0,
      comments: 0,
      articles:
          '“News API has been the integral element allowing us to offer relevant and timely political news to our users – allowing them to take immediate action to contact their representatives using generated call scripts based on the articles they read.”“Ascender AI has a mission to apply AI to the media, and NewsAPI is one of our most valuable resources. Ascender is redefining how users interact with complex information, and the NewsAPI feed is an essential showcase for our technologies.”',
      followers: 0,
      following: 0,
      articlesNumber: 0,
      // image:Thumb

      image: Image.asset('sfsfsfsfsfs')),
 
];

class SelectionTab {
  SelectionTab({
    required this.category,
    Key? key,
  });

  String category;
}

List<SelectionTab> selection = [
  SelectionTab(
    category: 'Cameroon',
  ),
  SelectionTab(
    category: 'Africa',
  ),
  SelectionTab(
    category: 'Politics',
  ),
  SelectionTab(
    category: 'Society',
  ),
  SelectionTab(
    category: 'Business',
  ),
  SelectionTab(
    category: 'Education',
  ),
  SelectionTab(
    category: 'Tech',
  ),
  SelectionTab(
    category: 'Entertainment',
  ),
  SelectionTab(
    category: 'Sport',
  ),
];
