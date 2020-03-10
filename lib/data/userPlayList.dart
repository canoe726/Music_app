import 'package:flutter/material.dart';

class UserPlayList {
  String musicianName;
  String avatar;
  String songTitle;
  String songCover;
  String songComment;
  String uploadDate;
  IconData favorite;

  UserPlayList(String musicianName, String avatar, String songTitle, String songCover, String songComment, String uploadDate, IconData favorite) {
    this.musicianName = musicianName;
    this.avatar = avatar;
    this.songTitle = songTitle;
    this.songCover = songCover;
    this.songComment = songComment;
    this.uploadDate = uploadDate;
    this.favorite = favorite;
  }
}