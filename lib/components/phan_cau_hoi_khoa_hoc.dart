import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/dap_an_khoa_hoc.dart';
import 'package:mauflutter/controllers/question_controller_khoa_hoc.dart';
import 'package:mauflutter/models/Question_khoa_hoc.dart';

class phan_cau_hoi_khoa_hoc extends StatelessWidget {
  const phan_cau_hoi_khoa_hoc({
    Key? key,
    required this.question_khoa_hoc,
  }) : super(key: key);
  final Question_Khoa_Hoc question_khoa_hoc;

  @override
  Widget build(BuildContext context) {
    question_controller_khoa_hoc _controller =
        Get.put(question_controller_khoa_hoc());
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
                    question_khoa_hoc.question,
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
                  question_khoa_hoc.options.length,
                  (index) => Dap_an_khoa_hoc(
                    index: index,
                    text: question_khoa_hoc.options[index],
                    press: () => _controller.checkAns(question_khoa_hoc, index),
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
