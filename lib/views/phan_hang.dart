import 'package:flutter/material.dart';
import 'package:mauflutter/components/info_canh_gioi_frame.dart';
import '../components/info_rank_frame.dart';
import '../models/db_context_rank.dart';

class phanhang extends StatefulWidget {
  const phanhang({super.key});

  @override
  State<phanhang> createState() => _phanhang();
}

class _phanhang extends State<phanhang> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.cyan,
          title: SizedBox(
            child: Container(
                margin: EdgeInsets.only(top: 5),
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
                            Text('BẢNG XẾP HẠNG',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white))
                          ]))
                ])),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.group),
                child: Text('CẢNH GIỚI'),
              ),
              Tab(
                icon: Icon(Icons.group_add),
                child: Text('HẠNG'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/bg_shen.jpg"), fit: BoxFit.cover),
              ),
              padding: EdgeInsets.only(bottom: 5),
              child: ListView.builder(
                itemCount: db_context_rank.items.length,
                itemBuilder: (context, index) {
                  return Info_canh_gioi_frame(
                    info: db_context_rank.items[index],
                  );
                },
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/bg_shen.jpg"), fit: BoxFit.cover),
              ),
              padding: EdgeInsets.only(bottom: 5),
              child: ListView.builder(
                itemCount: db_context_rank.items.length,
                itemBuilder: (context, index) {
                  return Info_rank_frame(
                    info: db_context_rank.items[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
