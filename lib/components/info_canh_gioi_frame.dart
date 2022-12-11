import 'package:flutter/material.dart';
import 'package:mauflutter/models/thong_tin_hang.dart';

class Info_canh_gioi_frame extends StatefulWidget {
  Info_canh_gioi_frame({super.key, required this.info});
  final Info info;
  @override
  State<Info_canh_gioi_frame> createState() => _Info_canh_gioi_State();
}

class _Info_canh_gioi_State extends State<Info_canh_gioi_frame> {
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
                      widget.info.avatar,
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
                      child: Text(widget.info.name,
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
                      child: Text(widget.info.current_ranking,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.white))),
                ])
              ])),
          Expanded(
              child: Row(children: [
            Container(
                margin: EdgeInsets.only(left: 0, top: 10),
                child: Text(widget.info.current_ranking_number,
                    style: TextStyle(fontSize: 50, color: Colors.red)))
          ])),
        ]));
  }
}
