import 'package:flutter/material.dart';
import 'package:mauflutter/models/db_context.dart';
import 'package:mauflutter/components/info_frame.dart';

class phanhang extends StatefulWidget {
  const phanhang({super.key});

  @override
  State<phanhang> createState() => _phanhangState();
}

class _phanhangState extends State<phanhang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/bg_shen.jpg"), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: db_context.items.length,
          itemBuilder: (context, index) {
            return Info_rank_frame(
              info: db_context.items[index],
            );
          },
        ),
      ),
    );
    body:
    Container(
      padding: EdgeInsets.all(5),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("asset/bg_shen.jpg"), fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('asset/half_347.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Colors.yellow, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 5),
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/jiuguan4b.png"),
                      fit: BoxFit.cover),
                ),
                child: Text(
                  'Doãn Chí Bình',
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("asset/huanpi_gongyong_anniu_0.png"),
                      fit: BoxFit.cover),
                ),
                child: Text(
                  'Cảnh giới',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Image(
              image: AssetImage('asset/icon_duanwei_06.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/icon_dian1.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    '123456',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/icon_dian0.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const Text(
                    '123456',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ],
          ),
          ListView.builder(
              itemCount: db_context.items.length,
              itemBuilder: (context, index) {
                return Info_rank_frame(info: db_context.items[index]);
              })
        ],
      ),
    );
  }
}
