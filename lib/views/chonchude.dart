import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/views/chedochoi.dart';
import 'package:mauflutter/views/trangchu.dart';
import 'package:mauflutter/views/trong_tran_am_nhac.dart';
import 'package:mauflutter/views/trong_tran_dia_ly.dart';
import 'package:mauflutter/views/trong_tran_khoa_hoc.dart';
import 'package:mauflutter/views/trong_tran_lich_su.dart';
import 'package:mauflutter/views/trong_tran_the_thao.dart';

class chonchude extends StatefulWidget {
  const chonchude({super.key});

  @override
  State<chonchude> createState() => _chonchude();
}

class _chonchude extends State<chonchude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/bg_lose.jpg'), fit: BoxFit.fill)),
            child: ListView(
              children: [
                Column(children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        height: (MediaQuery.of(context).size.width / 3) / 2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/back.png'),
                                fit: BoxFit.fill)),
                        child: TextButton(
                          child: Text(''),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const chedochoi()),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 30, left: 100),
                          width: (MediaQuery.of(context).size.height / 3) * 2,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'asset/huanpi_gongyong_juqing_4.png'),
                                  fit: BoxFit.fill)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CHỌN CHỦ ĐỀ',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 40),
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/TZFB_02.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) =>
                                        const trong_tran_am_nhac()),
                                  ),
                                );
                              },
                              child: Text(
                                'ÂM NHẠC',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 40),
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/TZFB_010.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) =>
                                        const trong_tran_the_thao()),
                                  ),
                                );
                              },
                              child: Text(
                                'THỂ THAO',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 40),
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/TZFB_08.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) =>
                                        const trong_tran_khoa_hoc()),
                                  ),
                                );
                              },
                              child: Text(
                                'KHOA HOC',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 40),
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/TZFB_04.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) =>
                                        const trong_tran_lich_su()),
                                  ),
                                );
                              },
                              child: Text(
                                'LỊCH SỬ',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25, left: 40),
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/TZFB_05.png'),
                                  fit: BoxFit.fill)),
                          child: Column(children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) =>
                                        const trong_tran_dia_ly()),
                                  ),
                                );
                              },
                              child: Text(
                                'ĐỊA LÝ',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                ]),
              ],
            )));
  }
}
