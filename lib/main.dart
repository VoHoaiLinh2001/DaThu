import 'package:flutter/material.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/dang_nhap.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/services/system_chrome.dart';
import 'package:mauflutter/views/ketthuc.dart';
import 'package:mauflutter/views/khung.dart';
import 'package:mauflutter/views/phan_hang.dart';
import 'package:mauflutter/views/trangchu.dart';
import 'package:mauflutter/views/trong_tran.dart';
import 'package:mauflutter/models/db_context.dart';

void main() {
  db_context.createData();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: dangnhap(), //dang nhap
      //Linh bgtstexcjg5xdfcgvbrztxcvjbrdxtfcvhb
    );
  }
}
