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
                                icon: Image.asset(
                                    'asset/1024px-Refresh_icon.png'),
                                onPressed: () {},
                              ),
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
                              child: IconButton(
                                icon:
                                    Image.asset('asset/zhucheng_liaotian.png'),
                                onPressed: () {},
                              ),
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
                              child: IconButton(
                                icon: Image.asset('asset/zhucheng_beibao.png'),
                                onPressed: () {},
                              ),
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
                              child: IconButton(
                                icon: Image.asset(
                                    'asset/huanpi_ZD_meishuzi3.png'),
                                onPressed: () {},
                              ),
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
                              child: IconButton(
                                icon: Image.asset('asset/ZZZZZ.png'),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}
