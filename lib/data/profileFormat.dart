import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String songName;
  final String uploadDate;
  final String imgLoc;
  final String comment;
  IconData favorite;

  User({
    this.id,
    this.name,
    this.songName,
    this.uploadDate,
    this.imgLoc,
    this.comment,
    this.favorite,
  });
}

User myProfile = User(
  id: 'beenzino_',
  name: '빈지노',
  songName: 'Aqua Man',
  uploadDate: "2012년 07월 03일",
  imgLoc: 'assets/beenzinoAlbum.jpg',
  comment: '아꾸아매엔엔',
  favorite: Icons.favorite_border,
);

List<User> users = [
  User(
      id: 'changmo_',
      name: '창모',
      songName: 'meteor',
      uploadDate: "2019년 11월 29일",
      imgLoc: 'assets/gridSample1.png',
      comment: '난 네게 처박힐 메뗴오야',
      favorite: Icons.favorite_border),
  User(
      id: 'cjamm',
      name: '씨잼',
      songName: '왈',
      uploadDate: "2019년 05월 16일",
      imgLoc: 'assets/gridSample2.png',
      comment: '킁킁',
      favorite: Icons.favorite_border),
  User(
      id: 'xxx_',
      name: 'XXX',
      songName: 'Language',
      uploadDate: "2019년 02월 15일",
      imgLoc: 'assets/gridSample3.png',
      comment: 'xxx',
      favorite: Icons.favorite_border),
  User(
      id: 'O`Domar',
      name: '오도마',
      songName: '범인',
      uploadDate: "2019년 09월 17일",
      imgLoc: 'assets/gridSample4.png',
      comment: '밭밭밭',
      favorite: Icons.favorite_border),
  User(
      id: 'fs_',
      name: 'FUTURISTIC SWAVER',
      songName: 'off my head',
      uploadDate: "2018년 12월 17일",
      imgLoc: 'assets/gridSample5.png',
      comment: 'off my heaaaad',
      favorite: Icons.favorite_border),
  User(
      id: 'sogumm',
      name: '소금',
      songName: '궁금해',
      uploadDate: "2019년 09월 27일",
      imgLoc: 'assets/gridSample6.png',
      comment: '안궁금해',
      favorite: Icons.favorite_border),
  User(
      id: 'Samuel_Seo',
      name: '서사무엘',
      songName: 'Coastal Wave',
      uploadDate: "2019년 10월 31일",
      imgLoc: 'assets/gridSample7.png',
      comment: '코스트코 ㅅㅂ',
      favorite: Icons.favorite_border),
  User(
      id: 'crush_',
      name: 'Crush',
      songName: 'Sunset',
      uploadDate: "2019년 12월 05일",
      imgLoc: 'assets/gridSample8.png',
      comment: '크러시',
      favorite: Icons.favorite_border),
  User(
      id: 'he_is_jipsy',
      name: '히피는 집시였다',
      songName: '파도',
      uploadDate: "2019년 11월 18일",
      imgLoc: 'assets/gridSample9.png',
      comment: 'fire',
      favorite: Icons.favorite_border),
  User(
      id: 'yerin_',
      name: '백예린',
      songName: 'square(2017)',
      uploadDate: "2019년 12월 10일",
      imgLoc: 'assets/gridSample10.png',
      comment: '상받음',
      favorite: Icons.favorite_border),
];
