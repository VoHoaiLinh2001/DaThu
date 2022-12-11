import 'package:flutter/material.dart';
import '../models/db_context_ban_be.dart';
import '../components/thong_tin_ban_be_frame.dart';

class banbe extends StatefulWidget {
  const banbe({super.key});

  @override
  State<banbe> createState() => _banbeState();
}

class _banbeState extends State<banbe> {
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
          children: [
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
            Column(children: [
              Container(
                  child: Stack(children: <Widget>[
                Image(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    image: AssetImage('asset/sdk_notice_title_bg.png'),
                    fit: BoxFit.fill),
                Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Bảng xếp hạng',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white))
                        ]))
              ])),
              Column(children: [
                Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/bg_mianban_big2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: Column(children: [
                      Row(children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(40, 5, 40, 0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "asset/shouchonglibao_anniu.png"),
                                fit: BoxFit.fill),
                          ),
                          child: TextButton(
                            child: const Text('BẠN BÈ',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {
                              /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const ()),
                                ),
                              ); */
                            },
                          ),
                        )),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(40, 5, 40, 0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "asset/shouchonglibao_anniu.png"),
                                fit: BoxFit.fill),
                          ),
                          child: TextButton(
                            child: const Text('ĐANG CHỜ',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {
                              /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const ()),
                                ),
                              ); */
                            },
                          ),
                        ))
                      ]),
                      Expanded(
                        child: ListView.builder(
                          itemCount: db_context_ban_be.items.length,
                          itemBuilder: (context, index) {
                            return Thong_tin_ban_be_frame(
                              thong_tin_ban_be: db_context_ban_be.items[index],
                            );
                          },
                        ),
                      )
                    ]))
              ])
            ]),
          ],
        ),
      ),
    );
  }
}
