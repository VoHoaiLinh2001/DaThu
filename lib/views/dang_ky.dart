import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/main.dart';
import 'package:mauflutter/views/Utils.dart';
import 'package:mauflutter/views/dang_nhap.dart';

class dangky extends StatefulWidget {
  const dangky({super.key});

  @override
  State<dangky> createState() => _dangkyState();
}

class _dangkyState extends State<dangky> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  bool _showpass = false;
  bool isChecked = false;
  void ShowPass() {
    setState(() {
      _showpass = !_showpass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/dangnhapdangky.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(children: [
            Column(
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    child: Text(
                      'ĐĂNG KÝ',
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                              ),
                              controller: EmailController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (email) => email != null &&
                                      EmailValidator.validate(email)
                                  ? null
                                  : 'Vui lòng nhập email hợp lệ',
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Mật khẩu',
                              ),
                              controller: PasswordController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) =>
                                  value != null && value.length < 8
                                      ? 'Mật khẩu phải trên 8 ký tự'
                                      : null,
                            ),
                          ),
                          /* Container(
                            padding: const EdgeInsets.fromLTRB(75, 10, 75, 0),
                            child: TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nhập Lại Mật khẩu',
                              ),
                            ),
                          ), */
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: this.isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                this.isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            'Đồng ý với các điều khoản sử dụng.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
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
                              width: 140,
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => const dangnhap()),
                                    ),
                                  );
                                },
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
                                onPressed: sinUp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }

  Future sinUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: EmailController.text.trim(),
        password: PasswordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar('Email đã được sử dụng');
    }
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
