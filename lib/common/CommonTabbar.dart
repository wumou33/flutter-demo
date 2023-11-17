import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonTabbar extends StatefulWidget {


  late int currentIndex;

  CommonTabbar(this.currentIndex, {super.key});



  @override
  State<CommonTabbar> createState() => _CommonTabbarState(currentIndex);
}

class _CommonTabbarState extends State<CommonTabbar> {

  _CommonTabbarState(this._currentIndex);



  int _currentIndex;

  @override
  void initState() {
    super.initState();
  }






  @override
  Widget build(BuildContext context) {
    return WillPopScope(child:  BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromRGBO(245, 245, 245, 0.8),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), label: "消息", backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "联系人",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: "动态",
            backgroundColor: Colors.blue),
      ],
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          if(value == 0 && _currentIndex != 0) {
            _currentIndex = value;
            Get.offNamed("/home");
          }
          else if(value == 1 && _currentIndex != 1) {
            _currentIndex = value;
          Get.offNamed("/contact");
          }

        });
      },
    ),
        onWillPop: (){
          Navigator.of(context).pop();

          setState(() {

          });
       return Future.value(false);
        });
  }
}
