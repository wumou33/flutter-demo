import 'package:flutter/material.dart';
import 'package:flutterdemo/common/CommonTabbar.dart';
import 'package:flutterdemo/pages/contact/ContactPageBody.dart';

import '../../common/HomeTabbarLoading.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leadingWidth: 80,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/image/caosheng.png',
                  ),
                )),
            const Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  ],
                ))
          ],
        ),
        title: const Text("联系人"),
        actions: [
          IconButton(
            icon: const Icon(Icons.group_add),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: CommonTabbar(1),
      body:  ContactPageBody(),

    );
  }
}
