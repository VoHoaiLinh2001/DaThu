import 'package:flutter/material.dart';
class timdoithu extends StatefulWidget {
  const timdoithu({super.key});

  @override
  State<timdoithu> createState() => _timdoithuState();
}

class _timdoithuState extends State<timdoithu> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/bg_toumingdi.png'),
          fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 400,
              child: Image(image: AssetImage('asset/1.png'),
              fit: BoxFit.fill,),
            ),
            Container(
              child: Text('Đấu Xếp Hạng',
              style: TextStyle(
                fontSize: 40
              ),),
            ),
            Container(
              width: 170,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_7.png'),
                fit: BoxFit.fill)
              ),
              child: Image(image: AssetImage('asset/half_725.png'),
              fit: BoxFit.fill,),
              padding: EdgeInsets.fromLTRB(15, 20, 10, 10)
            ),
             Container(
                margin: EdgeInsets.only(bottom: 10),
                height: MediaQuery.of(context).size.width / 4.0,
                child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                     height:MediaQuery.of(context).size.width/3.0,
                    child: Image(
                    image: AssetImage('asset/cuoi.png'),
                    fit: BoxFit.fill,
                    )),
              Center(
                child: Container(
                width: MediaQuery.of(context).size.width/4.0,
                height: MediaQuery.of(context).size.width/4.0,
                child: Image(image: AssetImage('asset/kiem.png'),
                fit: BoxFit.cover,
               ))),
              ],
            )),
            Container(
              width: 170,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_7.png'),
                fit: BoxFit.fill)
              ),
              child: Image(image: AssetImage('asset/half_703.png'),
              fit: BoxFit.fill,),
              padding: EdgeInsets.fromLTRB(15, 20, 10, 10)
            ),
          ]
        ),
      )
    );
  }
}