import 'package:flutter/material.dart';

class GoogleLogin extends StatefulWidget {
  @override
  _GoogleLoginState createState() => _GoogleLoginState();
}

class _GoogleLoginState extends State<GoogleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF34558b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,50,0,0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset(
                    'assets/appLogo.png',
                    width: 150,
                    height: 120,
                  ),
                  Text(
                    'SOUND CLOUD',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: 'Futura',
                    ),
                  ),
                  SizedBox(height: 80),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/home', arguments: {

                      });
                    },
                    child: Container(
                      color: Colors.white,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/googleLogo.png',
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Google 계정으로 로그인하기',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
