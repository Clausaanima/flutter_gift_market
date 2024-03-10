import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_main/main_page/HorizontalListView.dart';
//import 'package:flutter_application_main/main_page/HorizontalListView.dart';



class MPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left:1.0, right: 1.0 ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0), // Границы со всех сторон
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0), // Скругление снизу слева
              bottomRight: Radius.circular(50.0), // Скругление снизу справа
            ),
            image: DecorationImage(
              image: AssetImage('assets/image/sale.jpg'), // Замените на реальный URL изображения
              fit: BoxFit.cover,
            ),
          ),
          height: 300,
          child: Column(
            children: <Widget>[
              Container(
                //color: Colors.grey[200],
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Действие при нажатии на кнопку поиска
                        print('Выполнить поиск...');
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: HorizontalListView()
              ),
            ],
          ),
        ),
      ),
    );
  }
}


