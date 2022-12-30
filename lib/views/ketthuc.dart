import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mauflutter/controllers/questionController.dart';
import 'package:mauflutter/views/coming_soon.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';
import 'package:mauflutter/views/trong_tran.dart';

class ketthuc extends StatefulWidget {
  const ketthuc({super.key});

  @override
  State<ketthuc> createState() => _ketthuc();
}

class _ketthuc extends State<ketthuc> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/anh.png'), fit: BoxFit.fill),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 70,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const trangchu()),
                                ),
                              );
                            },
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 50, 0, 0))
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
                                          image:
                                              AssetImage('asset/thongtin.png'),
                                          fit: BoxFit.fill),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30, 50, 0, 0),
                                                    child: Text(
                                                        "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors
                                                                .white)))),
                                            Expanded(
                                                flex: 2,
                                                child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        30, 10, 0, 0),
                                                    child: Text("Doãn Chí Bình",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)))),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 40),
                                                  child: Image(
                                                    height: 150,
                                                    image: AssetImage(
                                                        'asset/nhanvat.png'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    padding:
                                        EdgeInsets.fromLTRB(30, 30, 30, 30),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('asset/thongbao.png'),
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
                              Column(children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/nut.png'))),
                                        child: TextButton(
                                          child: Text('Trang Chủ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              textAlign: TextAlign.center),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: ((context) =>
                                                    const trangchu()),
                                              ),
                                            );
                                          },
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(30, 5, 30, 5),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/nut.png'))),
                                        child: TextButton(
                                          child: Text('Tầng Tiếp Theo',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                              textAlign: TextAlign.center),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: ((context) =>
                                                    const comingsoon()),
                                              ),
                                            );
                                          },
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(30, 5, 30, 5),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/nut.png'))),
                                        child: TextButton(
                                          child: Text('Chơi Lại',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              textAlign: TextAlign.center),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: ((context) =>
                                                    const trongtran()),
                                              ),
                                            );
                                          },
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(30, 0, 30, 0),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'asset/nut.png'))),
                                        child: TextButton(
                                          child: Text('Chọn Phụ Bản',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              textAlign: TextAlign.center),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: ((context) =>
                                                    const comingsoon()),
                                              ),
                                            );
                                          },
                                        ),
                                        padding:
                                            EdgeInsets.fromLTRB(30, 0, 30, 0),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                              Container(
                                  margin: EdgeInsets.only(bottom: 25),
                                  height:
                                      MediaQuery.of(context).size.width / 4.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsets.only(top: 20),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width /
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
                                                image: AssetImage(
                                                    'asset/kiem.png'),
                                                fit: BoxFit.cover,
                                              ))),
                                    ],
                                  )),
                            ])),
                  ),
                ])));
  }
}
