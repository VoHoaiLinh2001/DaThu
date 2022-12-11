import 'package:flutter/material.dart';
import '../components/thong_tin_ban_be_dang_cho_frame.dart';
import '../components/thong_tin_ban_be_frame.dart';
import '../models/db_context_ban_be.dart';

class banbe extends StatefulWidget {
  const banbe({super.key});

  @override
  State<banbe> createState() => _banbe();
}

class _banbe extends State<banbe> {
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
                            Text('BẠN BÈ',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white))
                          ]))
                ])),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.group),
                child: Text('BẠN BÈ'),
              ),
              Tab(
                icon: Icon(Icons.group_add),
                child: Text('ĐANG CHỜ'),
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
                itemCount: db_context_ban_be.items.length,
                itemBuilder: (context, index) {
                  return Thong_tin_ban_be_frame(
                    thong_tin_ban_be: db_context_ban_be.items[index],
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
                itemCount: db_context_ban_be.items.length,
                itemBuilder: (context, index) {
                  return Thong_tin_ban_be_dang_cho_frame(
                    thong_tin_ban_be: db_context_ban_be.items[index],
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
