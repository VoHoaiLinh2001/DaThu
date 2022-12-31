import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_nhap.dart';
import 'package:mauflutter/views/khung.dart';

class thongtin extends StatefulWidget {
  const thongtin({super.key});

  @override
  State<thongtin> createState() => _thongtinState();
}

class _thongtinState extends State<thongtin> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 260,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/buff_kuang.png"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Tên người chơi'),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 29),
                      height: 147,
                      width: 176,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("asset/Untitled-2.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.yellow, width: 2),
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.withOpacity(0.5),
                            spreadRadius: 10,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                            fit: BoxFit.fill),
                      ),
                      child: Text(
                        'Đổi Avatar',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Cảnh giới',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          /*Container(
                            child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                    'asset/migong_chuansongmen2.png')) /*migong_chuansongmen2.png*/),*/
                          Container(
                            margin: EdgeInsets.only(top: 15, left: 55),
                            //padding: EdgeInsets.only(left: 20, right: 20),
                            child: Text(
                              'Id:0123456',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            child: Expanded(
                              child: Column(
                                children: [
                                  Text('Mức rank'),
                                  Container(
                                      width: 50,
                                      height: 50,
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Image(
                                        image: AssetImage(
                                            'asset/icon_duanwei_06.png'),
                                      )),
                                  Text('Tên rank'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "asset/huanpi_gongyong_anniu_0.png"),
                                          fit: BoxFit.fill),
                                    ),
                                    child: Text(
                                      'Âm nhạc',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 5),
                                    padding:
                                        EdgeInsets.fromLTRB(13, 10, 13, 10),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "asset/huanpi_gongyong_anniu_0.png"),
                                          fit: BoxFit.fill),
                                    ),
                                    child: Text(
                                      'Hiệu ứng âm thanh',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/huanpi_gongyong_anniu_0.png"),
                                            fit: BoxFit.fill)),
                                    child: TextButton(
                                      child: Text(
                                        'Chọn khung',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) =>
                                                const khung()),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.only(top: 5),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              //margin: EdgeInsets.only(left: 30),
                              //margin: EdgeInsets.only(left: 5),
                              ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "asset/huanpi_gongyong_anniu_0.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: TextButton(
                              child: Text(
                                'Đăng xuất',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'MyFont'),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const dangnhap()),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
