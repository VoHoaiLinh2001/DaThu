import 'package:flutter/material.dart';
import 'package:mauflutter/views/info.dart';

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
                      child: Image.asset(
                        "asset/half_347.png",
                        width: 22,
                        fit: BoxFit.cover,
                      ),
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
              width: 250,
              height: 50,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: TextButton(
                child: const Text(
                  'Chơi ngay',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: IconButton(
                              icon: Image.asset('asset/icon_op12.png'),
                              iconSize: 150,
                              onPressed: () {},
                            ),
                          ),
                          Text('Shop'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/icon_op30.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text('Xếp hạng'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/icon_op42.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text('Trang chủ'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/icon_op24.png"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          const Text('Bạn bè'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/icon_op7.png"),
                                  fit: BoxFit.fill),
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
