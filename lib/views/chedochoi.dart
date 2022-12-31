import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/views/chonchude.dart';
import 'package:mauflutter/views/dauxephang.dart';
import 'package:mauflutter/views/timdoithu.dart';
import 'package:mauflutter/views/trangchu.dart';

class chedochoi extends StatefulWidget {
  const chedochoi({super.key});

  @override
  State<chedochoi> createState() => _chedochoi();
}

class _chedochoi extends State<chedochoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/bg_lose.jpg'), fit: BoxFit.fill)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: (MediaQuery.of(context).size.width / 3) / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/back.png'), fit: BoxFit.fill)),
                child: TextButton(
                  child: Text(''),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const trangchu()),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30, left: 100),
                  width: (MediaQuery.of(context).size.height / 3) * 2,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('asset/huanpi_gongyong_juqing_4.png'),
                          fit: BoxFit.fill)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CHỌN CHẾ ĐỘ',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.height / 3) * 2,
                  height: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/button.png'),
                          fit: BoxFit.fill)),
                  child: TextButton(
                    child: Text(
                      'PHỤ BẢN',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const chonchude()),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.height / 3) * 2,
                  height: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/button.png'),
                          fit: BoxFit.fill)),
                  child: TextButton(
                    child: Text(
                      'XẾP HẠNG',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const timdoithu()),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
