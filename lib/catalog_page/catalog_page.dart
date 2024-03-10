import 'package:flutter/material.dart';
import 'package:flutter_application_main/catalog_page/VerticalListView.dart';


// Класс для вашей страницы каталога
class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromRGBO(1, 116, 121, 1), Colors.white], // Цвета вашего градиента
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                image: DecorationImage(
                image: AssetImage('assets/image/app_bar.jpg'),
                fit: BoxFit.cover,
                ), // Цвет для фона заголовка
               ),
              child: Column(
                children: <Widget>[
                  Container(
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
                ],
              ),
            ),
            Expanded(
              child: VerticalListView(),
            ),
          ],
        ),
      ),
    );
  }
}