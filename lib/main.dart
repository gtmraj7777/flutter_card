import 'package:card_app/test_file.dart';
import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'home_screen.dart';
import 'item.dart';
import 'item_detail.dart';

void main() {
  runApp(MyWidget());
  //runApp(TestFile());
}
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {

      //  "/":(contex) => HomeScreen(),
        "/":(contex) => HistoryScreen(),
      //  "/registration":(contex) => Registration(),
       // "/login":(contex) => LoginScreen(),
      //  "/category":(contex) => CategoryScreen(),
        // "/error":(contex) => ErrorScreen(),
      },


    );
  }
}
