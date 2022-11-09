

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
bool _showpass= false;
bool isChecked=false;
void ShowPass(){
  setState(() {
    _showpass=!_showpass;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/nen.png'),fit: BoxFit.fill,),
          ),  
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
            child: Column(  mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Column( 
                children: [
                  Container(padding: EdgeInsets.fromLTRB(50,20,50,30),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('asset/anh.png'),fit: BoxFit.cover),
                    ),
               child:Text('Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,),
                          textAlign: TextAlign.center,)
                  ),
                ],
              ),
            Container(
              
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: const BoxDecoration(
                
                border: Border(
                  
                  top: BorderSide(width: 4,color: Colors.black),
                  left: BorderSide(width: 4,color: Colors.black),
                  right: BorderSide(width: 4,color: Colors.black),
                  bottom: BorderSide(width: 4,color: Colors.black)
                  
                )
              
              ),
              child: 
            Column( children: [
             Container(
                child: 
                Row(
                  children: [
                    Text('Tên đăng nhập',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold),),
                  ],
                ),
                  padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
              ),
              Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5), 
              child:TextField(style: 
              TextStyle(color: Colors.black),
            decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              width: 1,
              color: Colors.white
            ),  
            ),
            border:OutlineInputBorder(),
            hintText: 'Nhập Username',
            hintStyle: TextStyle(color: Colors.white30)
            ),
            ), ),
            Container(
                child: 
                Row(
                  children: [
                    Text('Mật Khẩu',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,),),
                  ],
                ),
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                
              ),
            Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child:       TextField(
              style: 
              TextStyle(color: Colors.black),
              obscureText: !_showpass,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),  
            ),
            border:OutlineInputBorder(),
            hintText: 'Nhập mật khẩu',
            hintStyle: TextStyle(color: Colors.white30)
            ),
            ), ),
            Container(
            child: 
              Row(
                children: [
                  Text('Nhập Lại Mật Khẩu',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold),),
                  ],),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5), 
              ),
                 Padding(
              child: TextField(
              style:
              TextStyle(color: Colors.black),
              obscureText: !_showpass,
              decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.white,
              width: 1,
              
            ),  
            ),
            border:OutlineInputBorder(),
            hintText: 'Nhập lại mật khẩu',
            hintStyle: TextStyle(color: Colors.white30)
            ),
            ), 
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            
            ),
            
            Row(
            children: [Checkbox(
                            
            checkColor: Colors.white,
            value: isChecked, 
            onChanged: (bool? value){
              setState(() {
                isChecked= value!;
                });
                }
              ),const Expanded(child: Text('Đồng ý với các điều khoản trò chơi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15),)), 
            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10))
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/nut.png'))
              ),
              child: 
            Column(
              children: [
                Text('Đăng Nhập',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black),)
              ],
            ),
            padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/nut.png'))
              ),
              child: 
            Column(
              children: [
                Text('Đăng ký',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black),)
              ],
            ),
            padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
            )
            ],),
            ],),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            ),
            ],),
          ),
        ),
      )
    );
  }
}

