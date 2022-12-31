import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/dap_an_the_thao.dart';
import 'package:mauflutter/controllers/question_controller_the_thao.dart';
import 'package:mauflutter/models/Question_the_thao.dart';

class phan_cau_hoi_the_thao extends StatelessWidget {
  const phan_cau_hoi_the_thao({
    Key? key,
    required this.question_the_thao,
  }) : super(key: key);
  final Question_The_Thao question_the_thao;

  @override
  Widget build(BuildContext context) {
    question_controller_the_thao _controller =
        Get.put(question_controller_the_thao());
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 230, left: 50, right: 35),
                  child: Text(
                    question_the_thao.question,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
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
                  question_the_thao.options.length,
                  (index) => Dap_an_the_thao(
                    index: index,
                    text: question_the_thao.options[index],
                    press: () => _controller.checkAns(question_the_thao, index),
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
