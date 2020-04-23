import 'package:flutter/material.dart';
import 'package:music_app/components/CustomSearch.dart';
import 'package:music_app/pages/home.dart';
import 'package:music_app/pages/googleLogin.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => GoogleLogin(),
    '/home': (context) => Home(),
  },
));

