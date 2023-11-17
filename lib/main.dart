import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdemo/common/HomeAppBar.dart';
import 'package:flutterdemo/common/CommonTabbar.dart';
import 'package:flutterdemo/common/HomeTabbarLoading.dart';
import 'package:flutterdemo/pages/contact/ContactPage.dart';
import 'package:flutterdemo/pages/home/HomePage.dart';
import 'package:flutterdemo/pages/login/KZLogin.dart';
import 'package:get/get.dart';

void main() {
  SystemUiOverlayStyle systemUiOverlayStyle =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
             SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // 不显示右上角的 debug
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      defaultTransition: Transition.noTransition,
      getPages: [
        GetPage(name: "/home", page: () =>  HomePage()),
        GetPage(name: "/contact", page: () => const ContactPage()),
        GetPage(name: "/login", page: () => const KZLogin())
      ],
    );
  }
}
