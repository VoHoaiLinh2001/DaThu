import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_nhap.dart';

class dangky extends StatefulWidget {
  const dangky({super.key});

  @override
  State<dangky> createState() => _dangkyState();
}

class _dangkyState extends State<dangky> {
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
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                child: Text(
                  'Đăng Ký',
                  style: TextStyle(fontSize: 30),
                ),
                margin: EdgeInsets.only(top: 200),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(75, 10, 75, 0),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(75, 10, 75, 0),
                        child: TextField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Mật khẩu',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(75, 10, 75, 0),
                        child: TextField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nhập Lại Mật khẩu',
                          ),
                        ),
                      ),
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
                        'đồng ý với các điều khoản sử dụng.',
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
                            child: const Text(
                              'Đăng nhập',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
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
                            child: const Text(
                              'Đăng ký',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {},
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
      ),
    );
  }
}
