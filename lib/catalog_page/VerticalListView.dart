import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



// Класс, представляющий элемент списка
class MyItemArticle {
  final String imagePath;
  final String text;
  final String pageLink; // Ссылка на новую страницу

  MyItemArticle({required this.imagePath, required this.text, required this.pageLink});
}

// Виджет списка
class VerticalListView extends StatefulWidget {
  @override
  _VerticalListViewState createState() => _VerticalListViewState();
}

class _VerticalListViewState extends State<VerticalListView> {
  // Список элементов
  List<MyItemArticle> items = [
    MyItemArticle(
      text: 'ЦВЕТЫ',
      imagePath: 'assets/image/collect_bucket.jpg',
      pageLink: '/flower_page', // Пример ссылки на новую страницу
    ),
    MyItemArticle(
      text: 'СЛАДОСТИ',
      imagePath: 'assets/image/sweet_catalog.jpg',
      pageLink: '/sweet_page', // Пример ссылки на новую страницу
    ),
    MyItemArticle(
      text: 'ШАРЫ И ОТКРЫТКИ',
      imagePath: 'assets/image/card_gift.jpg',
      pageLink: '/ball_postcard_page', // Пример ссылки на новую страницу
    ),
    MyItemArticle(
      text: 'ПОДАРОЧНЫЕ БОКСЫ',
      imagePath: 'assets/image/gift_box.jpg',
      pageLink: '/gift_box_page', // Пример ссылки на новую страницу
    ),
  ];

  List<MyItemArticle> favoriteItemsArticle = [];

    @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Обработка нажатия на текст
            // Например, переход на новую страницу
            Navigator.pushNamed(context, items[index].pageLink);
          },
          child: Container(
            width: 300,
            height: 160,
            margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                 ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    items[index].imagePath,
                    fit: BoxFit.fill, // Изображение заполнит все доступное пространство
                  ),
                ),
                Positioned.fill( // Позиционирование текста на переднем плане
                  child: Center(
                    child: Text(
                      items[index].text,
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}