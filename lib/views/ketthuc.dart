import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
// ignore: unused_import
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';

class ketthuc extends StatefulWidget {
  const ketthuc({super.key});

  @override
  State<ketthuc> createState() => _ketthuc();
}

class _ketthuc extends State<ketthuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/anh.png'), fit: BoxFit.fill),
            ),
            child: Column(children: [
              Row(children: [
                Container(
                    width: 80,
                    child: TextButton(
                        onPressed: () {},
                        child: Image(image: AssetImage('asset/back.png'))))
              ]),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                //constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/khung.png'),
                        fit: BoxFit.fill)),
                child: Container(
                    height: (MediaQuery.of(context).size.height) -
                        ((MediaQuery.of(context).size.height) * 0.12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Kết Thúc',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 200,
                                margin: EdgeInsets.fromLTRB(15, 0, 20, 0),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/thongtin.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Column(children: [
                                  Row(children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30, 50, 0, 0),
                                            child: Text("Điểm số",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white)))),
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30, 10, 0, 0),
                                            child: Text("Doãn Chí Bình",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)))),
                                    Expanded(
                                        flex: 3,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 40),
                                          child: Image(
                                            height: 150,
                                            image:
                                                AssetImage('asset/nhanvat.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ])
                                ]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                                padding: EdgeInsets.fromLTRB(30, 30, 30, 50),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/thongbao.png'),
                                      fit: BoxFit.fill),
                                ),
                                child: Text(
                                  'Chúc mừng bạn đã hoàn thành tầng 1 phó bảng thể thao',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/nut.png'))),
                                    child: TextButton(
                                      child: Text('Trang Chủ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/nut.png'))),
                                    child: TextButton(
                                      child: Text('Tầng Tiếp Theo',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  ),
                                )
                              ],
                            ),
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/nut.png'))),
                                    child: TextButton(
                                      child: Text('Chơi Lại',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage('asset/nut.png'))),
                                    child: TextButton(
                                      child: Text('Chọn Phụ Bản',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      onPressed: () {},
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 20),
                              height: MediaQuery.of(context).size.width / 4.0,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.width /
                                              6.0,
                                      child: Image(
                                        image: AssetImage('asset/cuoi.png'),
                                        fit: BoxFit.fill,
                                      )),
                                  Center(
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4.0,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4.0,
                                          child: Image(
                                            image: AssetImage('asset/kiem.png'),
                                            fit: BoxFit.cover,
                                          ))),
                                ],
                              )),
                        ])),
              ),
            ])));
  }
}
