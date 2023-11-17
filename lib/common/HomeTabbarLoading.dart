import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/store/HomePageDrawerController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeTabbarLoading extends StatelessWidget {
   HomeTabbarLoading({Key? key}) : super(key: key);

  HomePageDrawerController homePageDrawerController = Get.find<HomePageDrawerController>();

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 10,
        ),
        Expanded(
            flex: 4,

            child: ClipRRect(

              borderRadius: BorderRadius.circular(50),
              child: GestureDetector(
                onTap: (){
                  homePageDrawerController.openDrawer();
                },
                child: Image.asset(
                  'assets/image/caosheng.png',
                ),
              )
            )),
        const Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("kzw"),
                Text("在线", style: TextStyle(
                    fontSize: 8,
                    color: Colors.greenAccent
                ),)
              ],
            ))
      ],
    );
  }
}
