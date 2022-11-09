import 'package:flutter/material.dart';

class thongtin extends StatefulWidget {
  const thongtin({super.key});

  @override
  State<thongtin> createState() => _trangchuState();
}

class _trangchuState extends State<thongtin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 5, left: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/bg_shen.jpg"),
            fit: BoxFit.cover,
          ),
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
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('asset/half_347.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 5),
                      padding: EdgeInsets.only(left: 15, right: 15),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/jiuguan4b.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'Doãn Chí Bình',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  width: 260,
                  height: 450,
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "asset/huanpi_gongyong_anniu_0.png"),
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
                                      padding:
                                          EdgeInsets.fromLTRB(30, 5, 30, 5),
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
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
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
                                      padding:
                                          EdgeInsets.fromLTRB(20, 7, 20, 7),
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "asset/huanpi_gongyong_anniu_0.png"),
                                              fit: BoxFit.fill)),
                                      child: Text(
                                        'Chọn khung',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
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
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                //margin: EdgeInsets.only(left: 5),

                                ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "asset/huanpi_gongyong_anniu_0.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Text(
                                'Đăng xuất',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'MyFont'),
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
            Row(
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
                            iconSize: 50,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
