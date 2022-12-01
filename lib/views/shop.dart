import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
// ignore: unused_import
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shop();
}

class _shop extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(5),
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/backgroud.png'), fit: BoxFit.fill)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 50,
              width: 50,
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
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/huanpi_gongyong_anniu_0.png"),
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
                            image: AssetImage("asset/vang.png"),
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
                            image: AssetImage("asset/bac.png"),
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
            child: Column(
              children: [
                Container(
                  width: 700,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/shouchonglibao_anniu2.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          'Cửa hàng',
                          style: TextStyle(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('asset/close.png'))),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((context) =>
                                            const trangchu()),
                                      ),
                                    );
                                  },
                                  child: Text(''))),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 500,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/bg_mianban_zhiban.png'),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.yellow, width: 2)),
                                  height: 100,
                                  child: Image(
                                    image: AssetImage('asset/reset.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.yellow, width: 2)),
                                  height: 100,
                                  child: Image(
                                    image: AssetImage('asset/phantram.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.yellow, width: 2)),
                                  height: 100,
                                  child: Image(
                                    image: AssetImage('asset/next.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.yellow, width: 2)),
                                      child: Image(
                                        image: AssetImage(
                                            'asset/zhucheng_beibao.png'),
                                        fit: BoxFit.cover,
                                      )),
                                  Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.yellow, width: 2)),
                                      child: Image(
                                        image: AssetImage(
                                            'asset/zhucheng_liaotian.png'),
                                        fit: BoxFit.cover,
                                      )),
                                  Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.yellow, width: 2)),
                                    child: Text(''),
                                    padding: EdgeInsets.all(40),
                                  )
                                ],
                              ),
                              padding: EdgeInsets.only(
                                top: 50,
                              ),
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(top: 30),
                      ),
                    ],
                  ),
                )
              ],
            ),
            padding: EdgeInsets.only(top: 50))
      ]),
    ));
  }
}
