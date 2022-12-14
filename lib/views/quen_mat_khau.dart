import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mauflutter/views/Utils.dart';
import 'package:mauflutter/views/dang_nhap.dart';

class quen_mat_khau extends StatefulWidget {
  const quen_mat_khau({super.key});

  @override
  State<quen_mat_khau> createState() => _quen_mat_khau();
}

class _quen_mat_khau extends State<quen_mat_khau> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('asset/back.png'))),
                  child: TextButton(
                    child: const Text(''),
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
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              flex: 0,
              child: Container(
                child: Text(
                  'QUÊN MẬT KHẨU',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 45,
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
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(15),
              child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Nhập email của bạn để đặt lại mật khẩu',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(labelText: 'Email'),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? 'Vui lòng nhập đúng định dạng Email'
                                : null,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'asset/button.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 55,
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Đặt Lại Mật Khẩu',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: resetPassword,
                        ),
                      ),
                    ],
                  )),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Future resetPassword() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Center(child: CircularProgressIndicator()),
    );
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showSnackBar('Email đặt lại mật khẩu đã được gửi');
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar('Vui lòng nhập Email');
      Navigator.of(context).pop();
    }
  }
}
