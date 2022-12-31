import 'package:flutter/material.dart';
import 'package:mauflutter/models/db_context_history.dart';
import 'package:mauflutter/components/lich_su_frame.dart';
import 'package:mauflutter/views/trangchu.dart';

class lichsudau extends StatefulWidget {
  const lichsudau({super.key});

  @override
  State<lichsudau> createState() => _lichsudauState();
}

class _lichsudauState extends State<lichsudau> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/back.png'))),
                    child: TextButton(
                      child: const Text(''),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const trangchu()),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
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
                          Text('Lịch Sử Đấu',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white))
                        ]))
              ])),
              Column(children: [
                Container(
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/bg_mianban_big2.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    height: MediaQuery.of(context).size.height * 0.82,
                    child: Column(children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: db_context_history.items.length,
                          itemBuilder: (context, index) {
                            return lich_su_frame(
                              info_history: db_context_history.items[index],
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
