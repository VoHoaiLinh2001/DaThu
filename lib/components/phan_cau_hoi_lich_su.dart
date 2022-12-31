import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/dap_an_lich_su.dart';
import 'package:mauflutter/controllers/question_controller_lich_su.dart';
import 'package:mauflutter/models/Question_lich_su.dart';

class phan_cau_hoi_lich_su extends StatelessWidget {
  const phan_cau_hoi_lich_su({
    Key? key,
    required this.question_lich_su,
  }) : super(key: key);
  final Question_Lich_Su question_lich_su;

  @override
  Widget build(BuildContext context) {
    question_controller_lich_su _controller =
        Get.put(question_controller_lich_su());
    return Container(
      height: (MediaQuery.of(context).size.height) * 0.75,
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'asset/shouchonglibao.png',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 230, 35, 40),
              child: ListView(
                children: [
                  Text(
                    question_lich_su.question,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/hd_kapai44.png'), fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                ...List.generate(
                  question_lich_su.options.length,
                  (index) => Dap_an_lich_su(
                    index: index,
                    text: question_lich_su.options[index],
                    press: () => _controller.checkAns(question_lich_su, index),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
