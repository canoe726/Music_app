class User {
  final String id;
  final String name;
  final String lastTalk;
  final String imgLoc;
  bool notify;

  User({this.id, this.name, this.lastTalk, this.imgLoc, this.notify});
}

List<User> users = [
  User(
      id: 'changmo_',
      name: '창모',
      lastTalk: 'meteor',
      imgLoc: 'assets/gridSample1.png',
      notify: true),
  User(
      id: 'cjamm',
      name: '씨잼',
      lastTalk: '왈',
      imgLoc: 'assets/gridSample2.png',
      notify: false),
  User(
      id: 'xxx_',
      name: 'XXX',
      imgLoc: 'assets/gridSample3.png',
      lastTalk: 'xxx',
      notify: true),
  User(
      id: 'O`Domar',
      name: '오도마',
      imgLoc: 'assets/gridSample4.png',
      lastTalk: '밭밭밭',
      notify: true),
  User(
      id: 'fs_',
      name: 'FUTURISTIC SWAVER',
      imgLoc: 'assets/gridSample5.png',
      lastTalk: 'off my heaaaad',
      notify: true),
  User(
      id: 'sogumm',
      name: '소금',
      imgLoc: 'assets/gridSample6.png',
      lastTalk: '안궁금해',
      notify: true),
  User(
      id: 'Samuel_Seo',
      name: '서사무엘',
      imgLoc: 'assets/gridSample7.png',
      lastTalk: '코스트코 ㅅㅂ',
      notify: true),
  User(
      id: 'crush_',
      name: 'Crush',
      imgLoc: 'assets/gridSample8.png',
      lastTalk: '크러시',
      notify: true),
  User(
      id: 'he_is_jipsy',
      name: '히피는 집시였다',
      imgLoc: 'assets/gridSample9.png',
      lastTalk: 'fire',
      notify: true),
  User(
      id: 'yerin_',
      name: '백예린',
      imgLoc: 'assets/gridSample10.png',
      lastTalk: '상받음',
      notify: true),
];
