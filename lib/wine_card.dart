import 'package:flutter/material.dart';

Widget WineCard(wine) {
  return Padding(
    padding: EdgeInsets.all((10)),
    child: InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 5,
                  color: Colors.grey.withOpacity(0.1))
            ]),
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Hero(
                tag: wine.imgPath,
                child: Container(
                  height: 125,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(wine.imgPath), fit: BoxFit.contain),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 7,
              left: 7,
              child: Text(
                wine.price,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 7,
              right: 10,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 15,
              ),
            ),
            Positioned(
              top: 175,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    wine.title,
                    style: TextStyle(fontSize: 14, fontFamily: 'AbrilFatFace'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(wine.subTitle, style: TextStyle(fontSize: 11,color: Colors.grey),),
                  SizedBox(height: 5,),
                  Row(
                    children: <Widget>[
                      getRatingStar(wine.rating, 1),
                      getRatingStar(wine.rating, 2),
                      getRatingStar(wine.rating, 3),
                      getRatingStar(wine.rating, 4),
                      getRatingStar(wine.rating, 5),
                      SizedBox(width: 3,),
                      Text(wine.rating.roundToDouble().toString(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF199693)
                      ),)

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}


getRatingStar(rating,index)
{
  if(index<=rating){
    return Icon(
      Icons.star,
      color: Color(0xFF199693),
    );
  }else{
    return Icon(
      Icons.star,
      color: Color(0xFFADDDDD),
    );
  }
}