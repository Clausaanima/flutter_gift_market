import 'package:flutter/material.dart';
import 'package:flutter_application_main/component/menubar.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/circle.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //margin: EdgeInsets.all(60),
              child: Text(
              textAlign: TextAlign.center, 
              'дарите радость и волшебство близким',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 32,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            ),
            SizedBox(height: 70),
            Container(
              //margin: EdgeInsets.only(bottom:130),
              child: Image.asset(
              'assets/icon/give_emotions.png',
              width: 300,
            ),
            ),
            SizedBox(height: 70),
            Container(
              margin: EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuApp()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'НАЧНЕМ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        fontStyle: FontStyle.italic,
                        fontSize: 50,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
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

