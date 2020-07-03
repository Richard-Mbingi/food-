import 'package:flutter/material.dart';

import 'constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/leaf(white).png',scale: 2.5,),
            SizedBox(height: 40.0),
            RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: 'Manjari'),
                children: <TextSpan>[
                  TextSpan(text: 'food', style: TextStyle(fontSize: 45.0)),
                  TextSpan(
                      text: '+',
                      style: TextStyle(fontSize: 40.0, color: kSecondaryGreen)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
