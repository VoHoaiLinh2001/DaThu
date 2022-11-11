import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';
class khung extends StatefulWidget {
  const khung({super.key});

  @override
  State<khung> createState() => _khung();
}

class _khung extends State<khung> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/denglu_bg.jpg'),
            fit: BoxFit.fill)
          ),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/back.png'))
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                                      Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/huanpi_jiesuan_guangxiao.png'),
                    fit: BoxFit.fill)
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text('Chọn khung xếp hạng',
                        style: TextStyle(
                          fontSize: 30
                          ),
                          textAlign: TextAlign.center,
                          ),
                          padding: EdgeInsets.only(top: 40,bottom: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 700,
                  width: 510,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/bg_mianban_zhiban.png'),
                    fit: BoxFit.fill)
                  ),
                  child: Column(children: [
                    Row(children: [
                      Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('asset/hero_card_pizhi2_2.png'),
                          fit: BoxFit.fill)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('asset/fabao_1.png'),
                                fit: BoxFit.fill)
                              ),
                              child: TextButton(
                                onPressed: (){}, 
                                child: Text('')),
                            ),
                          ],
                        )
                      )
                    ],)
                  ]),
                )
                  ]),
                              padding: EdgeInsets.only(top: 20),
                )
            ]),
          ),
        )
    );
   }
}