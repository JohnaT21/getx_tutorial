import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("show snack bar"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "Snack Bar Title",
                    "message here",
                  snackPosition: SnackPosition.BOTTOM,
                  // titleText: Text("Another Text"),
                  // messageText: Text("Another message here",
                  // style: TextStyle(color: Colors.white),
                  // )
                  colorText: Colors.red,
                  backgroundColor: Colors.black,
                  borderRadius: 30,
                  margin: EdgeInsets.all(10),
                  // maxWidth: 100
                  animationDuration: Duration(microseconds: 3000),
                  backgroundGradient: LinearGradient(
                      colors: [Colors.red,Colors.green]),
                  borderColor: Colors.purple,
                    borderWidth: 4,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(30,50),
                      spreadRadius: 20,
                       blurRadius: 8
                    )
                  ],
                  isDismissible: true,
                  forwardAnimationCurve: Curves.slowMiddle,
                  // duration: Duration(microseconds: 8000)
                );
              },
              child: const Text("Show Snack Bar")),

        ],
      ),
    );
  }
}
