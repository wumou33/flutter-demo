import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/login/src/KZLoginData.dart';

class KZLogin extends StatelessWidget {
  const KZLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),

      body: Center(
        child:Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "test",
              style: TextStyle(
                fontSize: 32,
              ),
            ),

          ],
        ),

      )
    );
  }
}
