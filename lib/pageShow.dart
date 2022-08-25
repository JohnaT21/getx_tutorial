import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageShow extends StatelessWidget {
  const PageShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                    Get.toNamed('/snackBarPage');
                    },
                    child: Text("Go to SnackBar Page")),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/bottomsheetPage');
                },
                    child: Text("Go to BottomSheet Page"))
              ],
            ),
          )),
    );
  }
}
