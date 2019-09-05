import 'package:flutter/material.dart';

class WineDetail extends StatefulWidget {
  final wineDetail;
  WineDetail({this.wineDetail});
  @override
  _WineDetailState createState() => _WineDetailState();
}

class _WineDetailState extends State<WineDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 12,
                          spreadRadius: 7)
                    ]),
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  color: widget.wineDetail.bgColor,
                ),
              ),
              Positioned(
                  top: 15,
                  left: 10,
                  right: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: 45,
                left: 15,
                right: 15,
                child: Hero(
                    tag: widget.wineDetail.imgPath,
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(20 / 360),
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(widget.wineDetail.imgPath),
                        )),
                      ),
                    )),
              ),
              Positioned(
                top: 375,
                left: 15,
                right: 15,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            widget.wineDetail.title,
                            style: TextStyle(
                                fontFamily: 'AbrilFatface', fontSize: 20),
                          ),
                          Text(
                            widget.wineDetail.subTitle,
                            style: TextStyle(
                                fontFamily: 'AbrilFatface',
                                fontSize: 11,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Text(
                        widget.wineDetail.price,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: widget.wineDetail.bgColor),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Essentially Geared Wine',
                              style: TextStyle(
                                fontFamily: 'AbrilFatFace',
                                fontSize: 20.0,
                              )),
                          Text('Every Journey is An Opportunity',
                              style: TextStyle(
                                  fontFamily: 'AbrilFatFace',
                                  fontSize: 11.0,
                                  color: Colors.grey))
                        ],
                      ),
                      Icon(
                        Icons.favorite,
                        color: widget.wineDetail.bgColor.withOpacity(0.5),
                        size: 22.0,
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Text('Whether it\'s an impromptu gathering with good friends or sustainbly canning wine to keep up with your daily adventures. Together we seek the uncommon.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
