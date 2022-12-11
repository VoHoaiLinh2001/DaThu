import 'package:flutter/material.dart';
import 'package:mauflutter/models/thong_tin_ban_be.dart';

class Thong_tin_ban_be_dang_cho_frame extends StatefulWidget {
  Thong_tin_ban_be_dang_cho_frame({super.key, required this.thong_tin_ban_be});
  final Thong_tin_ban_be thong_tin_ban_be;
  @override
  State<Thong_tin_ban_be_dang_cho_frame> createState() =>
      _Thong_tin_ban_be_dang_cho_State();
}

class _Thong_tin_ban_be_dang_cho_State
    extends State<Thong_tin_ban_be_dang_cho_frame> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
            image: const DecorationImage(
          image: AssetImage('asset/dituo22.png'),
          fit: BoxFit.fill,
        )),
        child: Row(children: [
          Expanded(
              flex: 3,
              child: Row(children: [
                Container(
                    margin: EdgeInsets.only(top: 12, left: 20),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset(
                      widget.thong_tin_ban_be.avatar,
                      width: 22,
                      fit: BoxFit.cover,
                    )),
                Column(children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/jiuguan4b.png"),
                            fit: BoxFit.fill),
                      ),
                      child: Text(widget.thong_tin_ban_be.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white))),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                            fit: BoxFit.cover),
                      ),
                      child: Text(widget.thong_tin_ban_be.current_ranking,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white))),
                ])
              ])),
          Expanded(
            flex: 2,
            child: Row(children: [
              Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Image(
                      width: 60,
                      height: 60,
                      image: AssetImage(widget.thong_tin_ban_be.icon_cancel))),
              Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Image(
                      width: 60,
                      height: 60,
                      image: AssetImage(widget.thong_tin_ban_be.icon_accept))),
            ]),
          ),
        ]));
  }
}
