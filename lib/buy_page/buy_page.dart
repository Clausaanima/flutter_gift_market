import 'package:flutter/material.dart';


class BuyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('это корзина приложения'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
              ),
          ]
      ),
    );
  }
}