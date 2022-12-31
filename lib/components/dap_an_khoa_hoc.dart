import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mauflutter/controllers/question_controller_khoa_hoc.dart';

class Dap_an_khoa_hoc extends StatelessWidget {
  const Dap_an_khoa_hoc({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<question_controller_khoa_hoc>(
        init: question_controller_khoa_hoc(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return Color.fromARGB(255, 38, 156, 15);
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Color(0xFFE92E30);
              }
            }
            return Color.fromARGB(255, 0, 0, 0);
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == Color(0xFFE92E30)
                ? Icons.close
                : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/zb_di2.png'),
                            fit: BoxFit.fill)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 40),
                        Expanded(
                          child: Text(
                            "${index + 1}" + ")" + " $text",
                            style: TextStyle(
                                color: getTheRightColor(), fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: getTheRightColor() ==
                                    Color.fromARGB(255, 2, 2, 2)
                                ? Colors.transparent
                                : getTheRightColor(),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: getTheRightColor()),
                          ),
                          child:
                              getTheRightColor() == Color.fromARGB(255, 0, 0, 0)
                                  ? null
                                  : Icon(getTheRightIcon()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
