import 'package:flutter/material.dart';
import 'package:tshop/model/wine.dart';
import 'package:tshop/widgets/wine_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final wineBrands = wines;
  final recommendList = recommendWines;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(50)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 12,
                          spreadRadius: 7)
                    ]),
              ),
              Positioned(
                top: 15.0,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 7, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 45,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Boutique',
                            style: TextStyle(
                                fontSize: 25, fontFamily: 'AbrilFatface'),
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 275,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: wineBrands.map((wine) {
                            return WineCard(wine, context);
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recommend',
                  style: TextStyle(fontFamily: 'AbrilFatface', fontSize: 25),
                ),
                Text(
                  'More',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 275,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: recommendList.map((wine) {
                  return WineCard(wine, context);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
