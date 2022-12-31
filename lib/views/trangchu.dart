import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/models/thong_tin_hang.dart';
import 'package:mauflutter/views/ban_be.dart';
import 'package:mauflutter/views/coming_soon.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/ket_thuc_am_nhac.dart';
import 'package:mauflutter/views/lich_su_dau.dart';
import 'package:mauflutter/views/phan_hang.dart';
import 'package:mauflutter/views/shop.dart';
import 'package:mauflutter/views/trong_tran_am_nhac.dart';
import 'chedochoi.dart';
import 'dang_nhap.dart';
import 'khung.dart';

class trangchu extends StatefulWidget {
  const trangchu({super.key});

  @override
  State<trangchu> createState() => _trangchuState();
}

class _trangchuState extends State<trangchu> {
  Widget popupmenu() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            //margin: EdgeInsets.only(top: 5),
            width: 340,
            height: 650,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/buff_kuang.png"), fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  //padding: EdgeInsets.only(top: 15),
                  child: const Text(
                    'Tên người chơi',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 210,
                  width: 231,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
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
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                        fit: BoxFit.fill),
                  ),
                  child: const Text(
                    'Đổi Avatar',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        child: const Text(
                          'Cảnh giới',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 55),
                        padding: EdgeInsets.only(right: 5, bottom: 20),
                        child: const Text(
                          'Id:0123456',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Mức rank',
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: const Image(
                                  image:
                                      AssetImage('asset/icon_duanwei_06.png'),
                                ),
                              ),
                              const Text(
                                'Tên rank',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Expanded(
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 40,
                                margin: EdgeInsets.only(top: 10),
                                padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "asset/huanpi_gongyong_anniu_0.png"),
                                      fit: BoxFit.fill),
                                ),
                                child: const Text(
                                  'Âm nhạc',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 40,
                                padding: EdgeInsets.fromLTRB(13, 10, 13, 5),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "asset/huanpi_gongyong_anniu_0.png"),
                                      fit: BoxFit.fill),
                                ),
                                child: const Text(
                                  'Hiệu ứng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/huanpi_gongyong_anniu_0.png"),
                                        fit: BoxFit.fill)),
                                child: TextButton(
                                  child: const Text(
                                    'Chọn khung',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) => const khung()),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                width: 150,
                                height: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "asset/huanpi_gongyong_anniu_0.png"),
                                        fit: BoxFit.fill)),
                                child: TextButton(
                                  child: const Text(
                                    'Lịch sử đấu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                            const lichsudau()),
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
                /* Container(
                  margin: EdgeInsets.only(top: 2),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        height: 150,
                        margin: EdgeInsets.only(left: 20),
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: TextButton(
                            child: const Text(
                              'Đăng xuất',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'MyFont'),
                            ),
                            onPressed: () => {
                                  FirebaseAuth.instance.signOut(),
                                }),
                      ),
                    ],
                  ),
                ), */
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
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
                        showDialog(
                            context: context,
                            builder: (context) => popupmenu());
                      }),
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
                      child: const Text(
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
                  child: const Image(
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
                        const Text(
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
              child: const Image(
                  image: AssetImage(
                    "asset/half_306.png",
                  ),
                  fit: BoxFit.fill),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
                  width: 65,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/xuanzhongguanka.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    child: TextButton(
                      child: const Text(
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
                          const Text('Shop'),
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
                          const Text('Xếp hạng'),
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
                              onPressed: () => {
                                FirebaseAuth.instance.signOut(),
                              },
                            ),
                          ),
                          const Text('Đăng xuất'),
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
                                    builder: ((context) => const banbe()),
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
                          const Text('Nạp'),
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
