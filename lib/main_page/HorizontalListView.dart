import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MyItemArticle {
  final String imagePath;
  //элементы контейнера

  MyItemArticle({required this.imagePath});
}

class HorizontalListView extends StatefulWidget {
  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {

  List<MyItemArticle> items = [
    MyItemArticle(
      imagePath: 'assets/image/collect_bucket.jpg',
    ),
    MyItemArticle(
      imagePath: 'assets/image/collect_bucket.jpg',
    ),
    MyItemArticle(
      imagePath: 'assets/image/collect_bucket.jpg',
    ),     
  ];

  List<MyItemArticle> favoriteItemsArticle = [];


@override
Widget build(BuildContext context) {
  return ListView.builder(
    //itemExtent: 150,
    scrollDirection: Axis.horizontal,
    itemCount: items.length,
    itemBuilder: (context, index) {
      return Container(
        width: 300,
        margin: EdgeInsets.all(30.0),
        //padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
         // border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(items[index].imagePath),
          ],
        ),
      );
    },
  );
}
}