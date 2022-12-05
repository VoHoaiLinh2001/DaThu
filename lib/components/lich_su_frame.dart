import 'package:flutter/material.dart';
import 'package:mauflutter/models/thong_tin_lich_su.dart';

class lich_su_frame extends StatefulWidget {
  lich_su_frame({super.key, required this.info_history});
  final Info_history info_history;
  @override
  State<lich_su_frame> createState() => _lich_su_frame_State();
}

class _lich_su_frame_State extends State<lich_su_frame> {
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
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/jiuguan4b.png"),
                          fit: BoxFit.fill),
                    ),
                    child: Text(widget.info_history.name_1,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black))),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Text(widget.info_history.current_ranking_1,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white))),
              ])
            ]),
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            height: 90,
            child: Image.asset(widget.info_history.sword_image),
          ),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/jiuguan4b.png"),
                          fit: BoxFit.fill),
                    ),
                    child: Text(widget.info_history.name_2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: Colors.greenAccent))),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Text(widget.info_history.current_ranking_2,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.white))),
              ])
            ]),
          ),
        ]));
  }
}
