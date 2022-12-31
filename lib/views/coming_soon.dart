import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';

class comingsoon extends StatefulWidget {
  const comingsoon({super.key});

  @override
  State<comingsoon> createState() => _comingsoonState();
}

class _comingsoonState extends State<comingsoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/denglu_bg.jpg'), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('COMING SOON',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
        ],
      ),
    ));
  }
}
