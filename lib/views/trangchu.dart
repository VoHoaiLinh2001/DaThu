import 'package:flutter/material.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/ketthuc.dart';
import 'package:mauflutter/views/trong_tran.dart';

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
                  height: 50,
                  width: 50,
                  child: Material(
                    // needed
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const thongtin()),
                          ),
                        );
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
                          child: Image.asset(
                            "asset/half_347.png",
                            width: 22,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 5),
                      padding: const EdgeInsets.only(left: 15, right: 15),
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
                  fit: BoxFit.cover),
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
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      "BXH",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                      builder: ((context) => const trongtran()),
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
                              onPressed: () {},
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
