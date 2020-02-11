import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  messagePage({Key key}) : super(key: key);

  @override
  _messagePageState createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('message page'),
    );
  }
}

