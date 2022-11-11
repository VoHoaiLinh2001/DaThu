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
                  return Info_rank_frame(info: db_context.items[index]);
                })));
  }
}
