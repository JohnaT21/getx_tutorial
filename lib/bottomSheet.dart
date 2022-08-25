import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: (){
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: (){
                          Get.changeTheme(ThemeData.light());
                          Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("Dark Theme"),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor: Colors.purpleAccent,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0
                    )
                  ),
                  // enableDrag: false
                );
              },
              child: Text('Bottom Sheet'),)
        ],
      ),
    );
  }
}
