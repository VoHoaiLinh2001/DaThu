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
          child: Column(
            children: [
              Container(
                child: Image(
                  image: AssetImage('asset/huanpi_jiesuan_guangxiao.png') ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('asset/bg_mianban_zhiban.png'),
                  fit: BoxFit.fill)
                ),
              )

          ]),
        )
    );
   }
}