import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/dap_an_dia_ly.dart';
import 'package:mauflutter/controllers/question_controller_dia_ly.dart';
import 'package:mauflutter/models/Question_dia_ly.dart';

class phan_cau_hoi_dia_ly extends StatelessWidget {
  const phan_cau_hoi_dia_ly({
    Key? key,
    required this.question_dia_ly,
  }) : super(key: key);
  final Question_Dia_Ly question_dia_ly;

  @override
  Widget build(BuildContext context) {
    question_controller_dia_ly _controller =
        Get.put(question_controller_dia_ly());
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
                    question_dia_ly.question,
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
                  question_dia_ly.options.length,
                  (index) => Dap_an_dia_ly(
                    index: index,
                    text: question_dia_ly.options[index],
                    press: () => _controller.checkAns(question_dia_ly, index),
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
