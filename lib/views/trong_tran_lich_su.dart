import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauflutter/components/phan_cau_hoi_lich_su.dart';
import 'package:mauflutter/controllers/question_controller_lich_su.dart';
import 'package:mauflutter/models/Question_lich_su.dart';
import 'package:mauflutter/views/ket_thuc_lich_su.dart';
import 'package:mauflutter/views/trangchu.dart';

class trong_tran_lich_su extends StatefulWidget {
  const trong_tran_lich_su({super.key});

  @override
  State<trong_tran_lich_su> createState() => _trong_tran_lich_suState();
}

class _trong_tran_lich_suState extends State<trong_tran_lich_su> {
  @override
  Widget build(BuildContext context) {
    question_controller_lich_su _questionControllerLichSu =
        Get.put(question_controller_lich_su());
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'asset/bg_shengsimeng.jpg',
                ),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              SafeArea(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            width: 70,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) =>
                                          const ket_thuc_lich_su()),
                                    ),
                                  );
                                },
                                child:
                                    Image(image: AssetImage('asset/back.png'))))
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: IconButton(
                              icon:
                                  Image.asset('asset/1024px-Refresh_icon.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/zhucheng_liaotian.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/zhucheng_beibao.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon:
                                  Image.asset('asset/huanpi_ZD_meishuzi3.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: Image.asset('asset/ZZZZZ.png'),
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: 12, left: 10, right: 10),
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF3F4768), width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: GetBuilder<question_controller_lich_su>(
                                init: question_controller_lich_su(),
                                builder: (controller) {
                                  return Stack(
                                    children: [
                                      LayoutBuilder(
                                        builder: (context, contraints) =>
                                            Container(
                                          width: contraints.maxWidth *
                                              controller.animation.value,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFF46A0AE),
                                                Color(0xFF00FFCB)
                                              ],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                      ),
                                      Positioned.fill(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${(controller.animation.value * 20).round()}s',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
                                      ))
                                    ],
                                  );
                                })),
                        Container(
                          padding: EdgeInsets.only(top: 6),
                          margin: EdgeInsets.only(top: 9),
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'asset/shouchonglibao_anniu.png'),
                                fit: BoxFit.fill),
                          ),
                          child: Obx(
                            () => Text.rich(
                              textAlign: TextAlign.center,
                              TextSpan(
                                text: "Câu ${_questionControllerLichSu.questionNumber.value}" +
                                    "/${_questionControllerLichSu.questions.length}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: PageView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          controller: _questionControllerLichSu.pageController,
                          onPageChanged:
                              _questionControllerLichSu.updateTheQnNum,
                          itemCount: _questionControllerLichSu.questions.length,
                          itemBuilder: (context, index) => phan_cau_hoi_lich_su(
                              question_lich_su:
                                  _questionControllerLichSu.questions[index])),
                    )
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
