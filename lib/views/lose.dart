import 'package:flutter/material.dart';
import 'package:mauflutter/views/timdoithu.dart';
import 'package:mauflutter/views/trangchu.dart';

class lose extends StatefulWidget {
  const lose({super.key});

  @override
  State<lose> createState() => _lose();
}

class _lose extends State<lose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/battle_map_63.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/huanpi_denglu_xuanfu.png'),
                        fit: BoxFit.fill)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: AssetImage('asset/half_725.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tên',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'Điểm số',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      child: Image(
                        image: AssetImage('asset/mengjiang.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Điểm số',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Image(
                              image: AssetImage('asset/half_703.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tên',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/cardhand_bg.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 58),
                    height: 169,
                    width: 165,
                    child: Image(
                      image: AssetImage('asset/half_703.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 53),
                    child: Text(
                      'LOSE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 100,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/nut.png'))),
                          child: TextButton(
                            child: Text('Trang Chủ',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const trangchu()),
                                ),
                              );
                            },
                          ),
                          padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/nut.png'))),
                          child: TextButton(
                            child: Text('Chơi Lại',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const timdoithu()),
                                ),
                              );
                            },
                          ),
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: IconButton(
                      icon: Image.asset('asset/1024px-Refresh_icon.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('asset/zhucheng_liaotian.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('asset/zhucheng_beibao.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('asset/huanpi_ZD_meishuzi3.png'),
                      iconSize: 40,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('asset/ZZZZZ.png'),
                      iconSize: 40,
                      onPressed: () {},
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
