import 'package:flutter/material.dart';
import 'package:flutterdemo/store/ContactController.dart';
import 'package:get/get.dart';

class ContactPageBody extends StatelessWidget {
  ContactPageBody({Key? key}) : super(key: key);

 ContactController contactController = Get.put(ContactController());


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[50],
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                      color: Colors.white,
                      height: 80,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                      // margin: EdgeInsets.all(10),
                      child: const TextField(
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "搜索",
                            hintStyle: TextStyle(),

                            fillColor: Color.fromRGBO(220, 220, 220, 0.5),
                            filled: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(0, 15, 0, 10), //内容内边距，影响高度
                            border: InputBorder.none,
                          ))))
            ],
          ),
          Container(
            color: Colors.white,
            child: const ListTile(
              // dense: true,
              title: Text("新朋友"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Container(
            color: Colors.white,
            child: const ListTile(
              // dense: true,
              title: Text("群通知"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: TabBar(
              labelColor: Colors.black,
              labelPadding: EdgeInsets.zero,
              controller: contactController.tabcontroller,
              tabs: contactController.ContactPageTabs,
            ),
          ),

          Container(
            height: 100,
            child: TabBarView(
              controller: contactController.tabcontroller,
              children: contactController.ContactPageTabs
                  .map((Tab tab) => Center(child: Text(tab.text!)))
                  .toList()),

            ),

        ],
      ),
    );
  }
}
