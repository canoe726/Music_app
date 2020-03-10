import 'package:flutter/material.dart';

class PeopleList {
  String coverImage;
  String title;
  String summary;
  String content;
  String date;
  IconData favorite = Icons.favorite_border;

  PeopleList(String coverImage, String title, String summary, String content, String date, IconData favorite) {
    this.coverImage = coverImage;
    this.title = title;
    this.summary = summary;
    this.content = content;
    this.date = date;
    this.favorite = favorite;
  }
}

class ConcertList {
  String coverImage;
  String title;
  String summary;
  String place;
  String date;
  IconData favorite = Icons.favorite_border;

  ConcertList(String coverImage, String title, String summary, String place, String date, IconData favorite) {
    this.coverImage = coverImage;
    this.title = title;
    this.summary = summary;
    this.place = place;
    this.date = date;
    this.favorite = favorite;
  }
}