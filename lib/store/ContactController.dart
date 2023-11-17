import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController with GetSingleTickerProviderStateMixin{


 final List<Tab> ContactPageTabs = <Tab>[
    const Tab(text: "好友",),
    const Tab(text: "分组", ),
    const Tab(text: "群聊",),
    const Tab(text: "设备",),
    const Tab(text: "通讯录",),
    const Tab(text: "订阅号",),
  ];
 late TabController tabcontroller;

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    tabcontroller = TabController(length: ContactPageTabs.length, vsync: this);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    tabcontroller?.dispose();
  }



}