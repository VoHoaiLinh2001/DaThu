import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/views/Utils.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/quen_mat_khau.dart';
import 'package:mauflutter/views/trangchu.dart';
import 'package:mauflutter/main.dart';

class dangnhap extends StatefulWidget {
  const dangnhap({super.key});

  @override
  State<dangnhap> createState() => _dangnhapState();
}

class _dangnhapState extends State<dangnhap> {
  bool checkBoxValue = false;
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'asset/dangnhapdangky.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  child: Text(
                    'ĐĂNG NHẬP',
                    style: TextStyle(
                        fontSize: 55,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            blurRadius: 10.0,
                            offset: Offset(2, 2),
                          )
                        ],
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [
                              Color.fromARGB(255, 30, 26, 163),
                              Color.fromARGB(255, 7, 84, 10),
                              Color.fromARGB(255, 86, 90, 3),
                            ],
                          ).createShader(
                            Rect.fromLTWH(0, 0, 400, 20),
                          )),
                  ),
                  margin: EdgeInsets.only(top: 100),
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                      controller: EmailController,
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mật khẩu',
                      ),
                      controller: PasswordController,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: this.checkBoxValue,
                    onChanged: (bool? value) {
                      setState(() {
                        this.checkBoxValue = value!;
                      });
                    },
                  ),
                  Text('Ghi nhớ đăng nhập')
                ],
              ),
              Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'asset/button.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                      width: 150,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.lock_open,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Đăng nhập',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        onPressed: signIn,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'asset/button.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                      width: 140,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Đăng ký',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const dangky()),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                  child: Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 19, 99, 237)),
                  ),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => quen_mat_khau(),
                      ))),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Text(
                        'Đăng nhập bằng',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Image.asset('asset/fb.png'),
                          iconSize: 50,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset('asset/gg.png'),
                          iconSize: 50,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: EmailController.text.trim(),
        password: PasswordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar('Tài khoản không tồn tại');
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
