import 'package:flutter/material.dart';

class UserPlayList {
  String musicianName;
  String avatar;
  String songTitle;
  String songCover;
  String songComment;
  String uploadDate;
  String musicPath;
  IconData favorite;
  IconData isMusicPlaying;

  UserPlayList(String musicianName, String avatar, String songTitle, String songCover, String songComment, String uploadDate, String musicPath, IconData favorite, IconData isMusicPlaying) {
    this.musicianName = musicianName;
    this.avatar = avatar;
    this.songTitle = songTitle;
    this.songCover = songCover;
    this.songComment = songComment;
    this.uploadDate = uploadDate;
    this.musicPath = musicPath;
    this.favorite = favorite;
    this.isMusicPlaying = isMusicPlaying;
  }
}