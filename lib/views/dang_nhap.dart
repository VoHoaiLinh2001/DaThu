import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
// ignore: unused_import
import 'package:mauflutter/views/info.dart';
import 'package:mauflutter/views/trangchu.dart';

class dangnhap extends StatefulWidget {
  const dangnhap({super.key});

  @override
  State<dangnhap> createState() => _dangnhapState();
}

class _dangnhapState extends State<dangnhap> {
  bool checkBoxValue = false;
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
        child: ListView(children: [
          Column(
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  child: Text(
                    'Đăng Nhập',
                    style: TextStyle(fontSize: 30),
                  ),
                  margin: EdgeInsets.only(top: 200),
                ),
              ),
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
                      width: 140,
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextButton(
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => const trangchu()),
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
                          icon: Image.asset('asset/gg.jpg'),
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
}
