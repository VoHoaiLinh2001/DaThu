import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mauflutter/views/Utils.dart';
import 'package:mauflutter/views/ban_be.dart';
import 'package:mauflutter/views/chedochoi.dart';
import 'package:mauflutter/views/chonchude.dart';
import 'package:mauflutter/views/dang_ky.dart';
import 'package:mauflutter/views/dang_nhap.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/services/system_chrome.dart';
import 'package:mauflutter/views/dauxephang.dart';
import 'package:mauflutter/views/ketthuc.dart';
import 'package:mauflutter/views/khung.dart';
import 'package:mauflutter/views/lich_su_dau.dart';
import 'package:mauflutter/views/phan_hang.dart';
import 'package:mauflutter/views/timdoithu.dart';
import 'package:mauflutter/views/trangchu.dart';
import 'package:mauflutter/views/trong_tran.dart';
import 'package:mauflutter/models/db_context_rank.dart';
import 'package:mauflutter/models/db_context_history.dart';
import 'package:mauflutter/models/db_context_ban_be.dart';
import 'package:mauflutter/views/Utils.dart';

Future main() async {
  db_context_rank.createData();
  db_context_history.createData();
  db_context_ban_be.createData();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
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
    return GetMaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Có lỗi xảy ra!'));
          } else if (snapshot.hasData) {
            return trangchu();
          } else {
            return dangnhap();
          }
        },
      ),
    );
  }
}
