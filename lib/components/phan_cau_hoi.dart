import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mauflutter/components/dap_an.dart';
import 'package:mauflutter/controllers/questionController.dart';
import 'package:mauflutter/models/Question1.dart';

class phan_cau_hoi extends StatelessWidget {
  const phan_cau_hoi({
    Key? key,
    required this.question,
  }) : super(key: key);
  final Question1 question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
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
                  margin: EdgeInsets.only(top: 160, left: 40, right: 18),
                  child: Text(question.question,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                  question.options.length,
                  (index) => Dap_an(
                    index: index,
                    text: question.options[index],
                    press: () => _controller.checkAns(question, index),
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
