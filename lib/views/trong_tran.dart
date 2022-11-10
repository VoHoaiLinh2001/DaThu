import 'package:flutter/material.dart';
import 'package:mauflutter/views/trangchu.dart';

class trongtran extends StatefulWidget {
  const trongtran({super.key});

  @override
  State<trongtran> createState() => _trongtranState();
}

class _trongtranState extends State<trongtran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'asset/bg_shengsimeng.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(children: [
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: IconButton(
                      icon: Image.asset('asset/1024px-Refresh_icon.png'),
                      iconSize: 50,
                      onPressed: () {},
                    )),
                    Container(
                        child: IconButton(
                      icon: Image.asset('asset/zhucheng_liaotian.png'),
                      iconSize: 50,
                      onPressed: () {},
                    )),
                    Container(
                        child: IconButton(
                      icon: Image.asset('asset/zhucheng_beibao.png'),
                      iconSize: 50,
                      onPressed: () {},
                    )),
                    Container(
                        child: IconButton(
                      icon: Image.asset('asset/huanpi_ZD_meishuzi3.png'),
                      iconSize: 50,
                      onPressed: () {},
                    )),
                    Container(
                        child: IconButton(
                      icon: Image.asset('asset/ZZZZZ.png'),
                      iconSize: 50,
                      onPressed: () {},
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/khung.png'),
                        fit: BoxFit.fill)),
                child: Container(
                    height: (MediaQuery.of(context).size.height) -
                        ((MediaQuery.of(context).size.height) * 0.22),
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Điểm số',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 2.2,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'asset/shouchonglibao.png',
                                  ),
                                  fit: BoxFit.fill),
                            ),
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 6),
                                      margin: EdgeInsets.only(top: 4),
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/shouchonglibao_anniu.png'),
                                              fit: BoxFit.fill)),
                                      child: Text('1/10',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          textAlign: TextAlign.center),
                                    )
                                  ]),
                              Row(children: [
                                Container(
                                    padding: EdgeInsets.only(top: 60),
                                    margin: EdgeInsets.only(left: 5),
                                    height: 100,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'asset/xuanzhongguanka.png'),
                                            fit: BoxFit.fill)),
                                    child: Text('00:20',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        textAlign: TextAlign.center)),
                              ]),
                              Container(child: Text('Câu hỏi')),
                            ]),
                          ),
                        ])),
              ),
            ])));
  }
}
