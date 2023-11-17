import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/store/HomePageDrawerController.dart';
import 'package:get/get.dart';

import '../../common/CommonTabbar.dart';
import '../../common/HomeTabbarLoading.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  HomePageDrawerController homePageDrawerController = Get.put(HomePageDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading:  HomeTabbarLoading(),
        title: const Text("message"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
               Get.toNamed("/login");
            },

          ),
        ],
        centerTitle: true,
      ),
      key: homePageDrawerController.scaffoldKey,
      drawer:  Drawer(
        width: MediaQuery.of(context).size.width,  //设备屏幕宽度
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
             const DrawerHeader(
               padding: EdgeInsets.zero,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/image/homeDrawBackground.jpg"
                    )
                  ),
                color: Colors.blue,
              ),
                child: Text("test"),

            ),
            ListTile(
              title: const Text("demo1"),
              onTap: (){
                homePageDrawerController.closeDrawer();
              },
            )

          ],
        ),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),

          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
      bottomNavigationBar: CommonTabbar(0),
    );
  }
}
