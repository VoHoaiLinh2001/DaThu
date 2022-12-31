import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/dap_an_am_nhac.dart';
import 'package:mauflutter/controllers/question_controller_am_nhac.dart';
import 'package:mauflutter/models/Question_am_nhac.dart';

class phan_cau_hoi_am_nhac extends StatelessWidget {
  const phan_cau_hoi_am_nhac({
    Key? key,
    required this.question_am_nhac,
  }) : super(key: key);
  final Question_Am_Nhac question_am_nhac;

  @override
  Widget build(BuildContext context) {
    question_controller_am_nhac _controller =
        Get.put(question_controller_am_nhac());
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
                    question_am_nhac.question,
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
                  question_am_nhac.options.length,
                  (index) => Dap_an_am_nhac(
                    index: index,
                    text: question_am_nhac.options[index],
                    press: () => _controller.checkAns(question_am_nhac, index),
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
