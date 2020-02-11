import 'package:flutter/material.dart';

class googleLogin extends StatefulWidget {
  @override
  _googleLoginState createState() => _googleLoginState();
}

class _googleLoginState extends State<googleLogin> {
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
                  Container(
                    color: Colors.white,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/googleLogo.png',
                          width: 30,
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home', arguments: {

                            });
                          },
                          child: Text(
                            'Google 계정으로 로그인하기',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
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
