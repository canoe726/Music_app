class ChatRoom{
  final String mId;
  final int withId;

  ChatRoom({this.mId, this.withId});
}

class Chat {
  String chat;
  String send;
  String to;

  Chat(String chat, String send, String to){
    this.chat = chat;
    this.send = send;
    this.to = to;
  }
}

List<Chat> chats=[
  Chat("창모 1", "me", "changmo_"),
  Chat("창모 2", "changmo_", "me"),
  Chat("창모 3", "me", "changmo_"),
  Chat("창모 4", "me", "changmo_"),
  Chat("창모 5", "changmo_", "me"),

  Chat("씨잼 1", "cjamm", "me"),
  Chat("씨잼 2", "me", "cjamm"),
  Chat("씨잼 3", "cjamm", "me"),
  Chat("씨잼 4", "me", "cjamm"),

  Chat("XXX 1", "xxx_", "me"),
  Chat("XXX 2", "me", "xxx_"),
  Chat("XXX 3", "xxx_", "me"),

  Chat("오도마 1", "me", "O`Domar"),
  Chat("오도마 2", "O`Domar","me"),

  Chat("퓨처릭 1", "fs_", "me"),
  Chat("퓨처릭 2", "me","fs_" ),
  Chat("퓨처릭 3", "fs_", "me"),
  Chat("퓨처릭 4", "me", "fs_"),
  Chat("퓨처릭 5", "fs_", "me"),

  Chat("소금 1", "me", "sogumm"),
  Chat("소금 2", "me", "sogumm"),
  Chat("소금 3", "sogumm", "me"),
  Chat("소금 4", "me", "sogumm"),

  Chat("서사무엘 1", "Samuel_Seo", "me"),
  Chat("서사무엘 2", "Samuel_Seo", "me"),
  Chat("서사무엘 3", "Samuel_Seo", "me"),

  Chat("크러쉬 1", "crush_", "me"),
  Chat("크러쉬 2", "me", "crush_"),

  Chat("히집 1", "he_is_jipsy", "me"),
  Chat("히집 2", "he_is_jipsy", "me"),

  Chat("백예린 1", "me", "yerin_"),
  Chat("백예린 2", "me", "yerin_"),
  Chat("백예린 3", "me", "yerin_"),
];


