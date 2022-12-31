import 'package:flutter/material.dart';
import 'package:mauflutter/views/lose.dart';
import 'package:mauflutter/views/win.dart';

import 'ket_thuc_am_nhac.dart';

class dauxephang extends StatefulWidget {
  const dauxephang({super.key});

  @override
  State<dauxephang> createState() => _dauxephang();
}

class _dauxephang extends State<dauxephang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/battle_map_63.jpg'), fit: BoxFit.fill)),
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 60),
                margin: EdgeInsets.only(left: 5),
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/xuanzhongguanka.png'),
                      fit: BoxFit.fill),
                ),
                child: Text('00:20',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/bg_gaiming.png'), fit: BoxFit.fill),
            ),
          ),
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/hd_kapai44.png'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Đáp án',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  width: 500,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(left: 50),
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/zb_di2.png'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const win()),
                          ),
                        );
                      },
                      child: const Text(
                        'A',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    padding: EdgeInsets.only(left: 50),
                    height: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/zb_di2.png'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const lose()),
                          ),
                        );
                      },
                      child: const Text(
                        'B',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/zb_di2.png'),
                                fit: BoxFit.fill)),
                        child: Row(
                          children: [
                            Text(
                              'C',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 50),
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/zb_di2.png'),
                                fit: BoxFit.fill)),
                        child: Row(
                          children: [
                            Text(
                              'D',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
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
                  iconSize: 60,
                  onPressed: () {},
                )),
                Container(
                    child: IconButton(
                  icon: Image.asset('asset/zhucheng_liaotian.png'),
                  iconSize: 60,
                  onPressed: () {},
                )),
                Container(
                    child: IconButton(
                  icon: Image.asset('asset/zhucheng_beibao.png'),
                  iconSize: 60,
                  onPressed: () {},
                )),
                Container(
                    child: IconButton(
                  icon: Image.asset('asset/huanpi_ZD_meishuzi3.png'),
                  iconSize: 60,
                  onPressed: () {},
                )),
                Container(
                    child: IconButton(
                  icon: Image.asset('asset/ZZZZZ.png'),
                  iconSize: 60,
                  onPressed: () {},
                ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
