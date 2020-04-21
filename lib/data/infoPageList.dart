import 'package:flutter/material.dart';

class FestivalList {
  String coverImage;
  String title;
  String summary;
  String date;

  FestivalList({this.coverImage, this.title, this.summary, this.date});
}

List<FestivalList> festivalList = [
  FestivalList(
    coverImage: "assets/Poster1.png",
    title: "World DJ Festival",
    summary: "2007년 5월 하이서울페스티벌의 프로그램 중 하나로 난지공연에서 열렸으며 서울특별시의 지원으로 3일동안 9만 명 이상의 관객을 동원해 각종 매체에서 한국판 우드스탁(1969년부터 미국에서 열린 우드스탁 락페스티벌)이란 칭송을 들으며 큰 성공을 거두었다. 2007~2010년까지는 한강 난지지구에서, 2011~2014년까지는 양평 나루께 축제공원에서, 2015~2016년에는 춘천 송암레포츠타운에서 개최되었으며 대한민국 최초이자 최대 EDM페스티벌로 자리잡았다.",
    date: "제13회 월드DJ페스티벌 : 2019년 6월 1일 ~ 6월 2일",
  ),
  FestivalList(
    coverImage: "assets/Poster2.jpg",
    title: "멜로디 포레스트 캠프",
    summary: "'음악 속으로 떠나는 가을빛 소풍, 2019 멜로디 포레스트 캠프' 여섯 번째 멜로디 포레스트 캠프가 찾아옵니다. 소풍 가는 즐거운 마음으로 멋진 음악과 근사한 계절이 만나는 그곳 자라섬에서 만나요!",
    date: "2019년 9월 7일 ~ 9월 8일",
  ),
  FestivalList(
    coverImage: "assets/Poster3.jpg",
    title: "폴 인 어쿠스틱 페스티벌 2015",
    summary: "폴인어쿠스틱 페스티벌은 올해로 4회째를 맞이한다. ‘어쿠스틱’이라는 단어에서 느껴지는 순수하고 편안한 분위기 속에서 아름다운 음악과 소중한 사람들이 함께 즐기는 소풍 같은 페스티벌이다. 관객뿐만 아니라 뮤지션과 스태프 모두가 즐기는 페스티벌이기도 하다.",
    date: "2015년 9월 19일 ~ 9월 20일",
  ),
];

class PeopleList {
  String coverImage;
  String title;
  String summary;
  String content;
  String date;
  IconData favorite = Icons.favorite_border;

  PeopleList({this.coverImage, this.title, this.summary, this.content, this.date, this.favorite});
}

List<PeopleList> peopleList = [
  PeopleList(
    coverImage:"assets/batsagongImage.jpg",
    title: "뱃사공",
    summary: "잘 돼야 돼 탕아",
    content: "래퍼 대부분이 성공을 위해 ‘쇼미더머니’란 힙합 카스트 제도 속으로 투신한 가운데서도 뚝심 있는 움직임은 존재한다. 기형적인 시스템이 지배하는 한국힙합 씬에서 여전히 멋과 낭만을 노래하는 크루, 리짓군즈(Legit Goons)는 대표적이다.",
    date: "2020년 2월 24일",
    favorite: Icons.favorite_border,
  ),
  PeopleList(
    coverImage: "assets/kidImage.jpg",
    title: "키드밀리",
    summary: "AI, THE PLAYLIST",
    content: "더 각 잡고 만든 앨범이 [AI, THE PLAYLIST]이라면, 곧 나오는 EP 앨범은 이제 거기서 작업하다 만 곡들과, 새로 작업한 곡을 섞어서 내는 거에요. 제가 준비하고 있는 ‘nondisclothes’라는 브랜드 이미지에 맞는 컨셉으로 발매하는 앨범일 거 같아요.",
    date: "2020년 1월 15일",
    favorite: Icons.favorite_border,
  ),
  PeopleList(
    coverImage: "assets/wuImage.jpg",
    title: "우원재",
    summary: "자유롭게 생각하며",
    content: "가청 주파수를 뜻하는 오디오 프리퀀시의 약어에요. 우리는 20부터 2만 헤르츠까지밖에 못 듣거든요. 그 범위 안에서만 듣고 그게 전부인 줄 알죠. 그게 인간이고. 또 특히 한국이란 곳은 A부터 F라는 범위 안에서만 등급이 매겨지잖아요. 생각보다 우리 인간은 선입견과 어떤 정해진 것에 반응하며 산다는 걸 표현하고 싶었어요.",
    date: "2019년 12월 28일",
    favorite: Icons.favorite_border,
  ),
];

class ConcertList {
  String coverImage;
  String title;
  String summary;
  String place;
  String date;
  IconData favorite = Icons.favorite_border;

  ConcertList({this.coverImage, this.title, this.summary, this.place, this.date, this.favorite});
}

List<ConcertList> concertList = [
  ConcertList(
    coverImage: "assets/indiePoster.jpg",
    title: "인디 나이트",
    summary: "인디 음반 발매 기념",
    place: "예술의전당 콘서트홀",
    date: "2020-05-13",
    favorite: Icons.favorite_border,
  ),
  ConcertList(
    coverImage: "assets/jazzPoster.jpg",
    title: "재즈 여행",
    summary: "재즈 음반 발매 기념",
    place: "예술의전당 콘서트홀",
    date: "2020-03-07",
    favorite: Icons.favorite_border,
  ),
  ConcertList(
    coverImage: "assets/urbanPoster.png",
    title: "어반 음악",
    summary: "어반 음반 발매 기념",
    place: "예술의전당 콘서트홀",
    date: "2020-01-25",
    favorite: Icons.favorite_border
  ),
];
