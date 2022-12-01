import 'package:flutter/material.dart';
import 'package:mauflutter/models/thong_tin_hang.dart';
import 'package:mauflutter/views/coming_soon.dart';
// ignore: unused_import
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/ketthuc.dart';
import 'package:mauflutter/views/phan_hang.dart';
import 'package:mauflutter/views/shop.dart';
import 'package:mauflutter/views/trong_tran.dart';

import 'chedochoi.dart';
import 'dang_nhap.dart';
import 'khung.dart';

class trangchu extends StatefulWidget {
  const trangchu({super.key});

  @override
  State<trangchu> createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/bg_shen.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 65,
                  width: 65,
                  child: Material(
                    color: Colors.transparent,
                    child: TextButton(
                      onPressed: (() {
//---------------------------------------------------------------------------------------
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Stack(
                                  children: [
                                    Container(
                                      //margin: EdgeInsets.only(top: 5),
                                      width: 400,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/buff_kuangg.png"),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text('Tên người chơi'),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 29),
                                            height: 200,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "asset/Untitled-2.png"),
                                                fit: BoxFit.cover,
                                              ),
                                              border: Border.all(
                                                  color: Colors.yellow,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.yellow
                                                      .withOpacity(0.5),
                                                  spreadRadius: 10,
                                                  blurRadius: 5,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 5, 20, 5),
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "asset/huanpi_gongyong_anniu_0.png"),
                                                  fit: BoxFit.fill),
                                            ),
                                            child: Text(
                                              'Đổi Avatar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Container(
                                            height: 80,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "asset/buff_kuang1.png"),
                                                  fit: BoxFit.fill),
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: 25),
                                                    margin:
                                                        EdgeInsets.only(top: 6),
                                                    child: Text(
                                                      'Cảnh giới',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                                /*Container(
                            child: Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                    'asset/migong_chuansongmen2.png')) /*migong_chuansongmen2.png*/),*/
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 6, left: 15),
                                                    //padding: EdgeInsets.only(left: 20, right: 20),
                                                    child: Text(
                                                      'Id:0123456',
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                                EdgeInsets.only(
                                                                    bottom: 5),
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  20, 0, 20, 0),
                                                          decoration:
                                                              const BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "asset/huanpi_gongyong_anniu_0.png"),
                                                                fit: BoxFit
                                                                    .fill),
                                                          ),
                                                          child: TextButton(
                                                            child: Text(
                                                              'Âm nhạc',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      ((context) =>
                                                                          const comingsoon()),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 10, 0),
                                                          decoration:
                                                              const BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage(
                                                                    "asset/huanpi_gongyong_anniu_0.png"),
                                                                fit: BoxFit
                                                                    .fill),
                                                          ),
                                                          child: TextButton(
                                                            child: Text(
                                                              'Hiệu ứng âm thanh',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      ((context) =>
                                                                          const comingsoon()),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  10, 0, 10, 0),
                                                          decoration: const BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      "asset/huanpi_gongyong_anniu_0.png"),
                                                                  fit: BoxFit
                                                                      .fill)),
                                                          child: TextButton(
                                                            child: Text(
                                                              'Chọn khung',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      ((context) =>
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    //margin: EdgeInsets.only(left: 30),
                                                    //margin: EdgeInsets.only(left: 5),
                                                    ),
                                                Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      15, 10, 20, 5),
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "asset/huanpi_gongyong_anniu_0.png"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  child: TextButton(
                                                    child: Text(
                                                      'Đăng xuất',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'MyFont'),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: ((context) =>
                                                              const dangnhap()),
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
                              );
                            });
                      }),
//---------------------------------------------------------------------------------
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('asset/avatar.png'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.yellow, width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 5),
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/jiuguan4b.png"),
                            fit: BoxFit.cover),
                      ),
                      child: const Text(
                        'Doãn Chí Bình',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'Cảnh giới',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Image(
                    image: AssetImage('asset/icon_duanwei_06.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/icon_dian1.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          '123456',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/icon_dian0.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Text(
                          '123456',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 250,
              child: Image(
                  image: AssetImage(
                    "asset/half_306.png",
                  ),
                  fit: BoxFit.fill),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/xuanzhongguanka.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    child: TextButton(
                      child: Text(
                        "BXH",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const phanhang()),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/juqingdi_2_2.png',
                    ),
                    fit: BoxFit.cover),
              ),
              width: MediaQuery.of(context).size.width / 1.1,
              height: 80,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: TextButton(
                child: const Text(
                  'Chơi ngay',
                  style: TextStyle(
                      fontSize: 33, color: Colors.black, fontFamily: 'MyFont'),
                ),
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
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/icon_op12.png'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const shop()),
                                  ),
                                );
                              },
                            ),
                          ),
                          Text('Shop'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/icon_op30.png'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const comingsoon()),
                                  ),
                                );
                              },
                            ),
                          ),
                          Text('Xếp hạng'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/icon_op42.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text('Trang chủ'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/icon_op24.png'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const comingsoon()),
                                  ),
                                );
                              },
                            ),
                          ),
                          const Text('Bạn bè'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/icon_op7.png'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const comingsoon()),
                                  ),
                                );
                              },
                            ),
                          ),
                          Text('Nạp'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
