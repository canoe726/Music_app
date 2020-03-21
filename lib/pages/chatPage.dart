import 'package:flutter/material.dart';
import 'package:music_app/data/chats.dart' as chat;
import 'package:music_app/data/chatFormat.dart' as chatFormat;

class ChatPage extends StatefulWidget {
  final chat.ChatRoom chatRoom;
  ChatPage({@required this.chatRoom});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<chat.Chat> chatData = chat.chats;
  chatFormat.User otherUser;
  final TextEditingController _textController = new TextEditingController();
  FocusNode _focusNode = new FocusNode();
  List<Widget> chatList = [];
  
  @override
  Widget build(BuildContext context) {
    otherUser = chatFormat.users[widget.chatRoom.withId];
    chatList = initChatList(otherUser.id);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(4.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage(otherUser.imgLoc),
                backgroundColor: Colors.transparent,
                radius: 30,
              ),
              title: Text(
                otherUser.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF34558b),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 5.0),
            child: Divider(
              color: Colors.grey,
              height: 5,
              thickness: 3,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                child: Column(
                  children: chatList,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    focusNode: _focusNode,
                    decoration:
                        InputDecoration.collapsed(hintText: "Send a message"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () => _handleSubmitted(_textController.text)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  List<Widget> initChatList(String idKey) {
    chatList.clear();
    for (int i = 0; i < chatData.length; i++) {
      if (chatData[i].to == "me" && chatData[i].send == idKey) {
        chatList.add(
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  color: const Color(0xFFe1e9ff),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      chat.chats[i].chat,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      } else if (chatData[i].send == "me" && chatData[i].to == idKey) {
        chatList.add(
          Container(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  color: const Color(0xFFe1e9ff),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      chat.chats[i].chat,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    return chatList;
  }

  void _handleSubmitted(String text) {
    setState(() {
      chatData.add(
        chat.Chat(text, "me", otherUser.id)
      );
    });
    _textController.clear();
    _focusNode.unfocus();
  }
}
