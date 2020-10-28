import 'package:carousel/custom_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  CarouselPage({Key key}) : super(key: key);

  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  int _currentIndex = 0;

  List cardList = [
    CustomContainer(),
    CustomContainer(),
    CustomContainer(),
    CustomContainer(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Card Carousel")),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.4,
              height: 150.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeIn, //fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 5,
                    top: 25,
                    bottom: 45,
                  ),
                  child: card,
                );
              });
            }).toList(),
          ),
          _buildDots(),
        ],
      ),
    );
  }

  _buildDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: map<Widget>(cardList, (index, url) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
          ),
        );
      }),
    );
  }
}
