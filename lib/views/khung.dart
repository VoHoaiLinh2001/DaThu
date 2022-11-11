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
                  child: 
                  Column(
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
                          padding: EdgeInsets.only(top: 40,bottom: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 750,
                  width: 550,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/bg_mianban_zhiban.png'),
                    fit: BoxFit.fill)
                  ),
                  child: Column(
                    children: [
                    Container(
                      child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi2_2.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        
                      Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi3_2.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi4_2.png'),
                            fit: BoxFit.fill)
                          ),
                        )
                      ],),
                      padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                    ),
                    Container(
                      child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi5.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        
                      Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi5_2.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi6_2.png'),
                            fit: BoxFit.fill)
                          ),
                        )
                      ],),
                      padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                    ),
                    Container(
                      child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi7_2.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        
                      Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_2.png'),
                            fit: BoxFit.fill)
                          ),
                        )
                      ],),
                      padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                    ),
                    Container(
                      child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_3.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        
                      Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_4.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_5.png'),
                            fit: BoxFit.fill)
                          ),
                        )
                      ],),
                      padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                    ),
                    Container(
                      child: 
                      Row(
                        children: [
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_6.png'),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/hero_card_pizhi8_7.png'),
                            fit: BoxFit.fill)
                          ),
                          margin: EdgeInsets.only(left: 60),
                        ),
                      ],),
                      padding: EdgeInsets.only(top: 20,left: 45),
                    ),
                  ]
                  ),
                )
                  ]
                  ),
                )
            ]
            ),
          ),
        )
    );
   }
}