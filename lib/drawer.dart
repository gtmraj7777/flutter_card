import 'package:flutter/material.dart';

import 'history_screen.dart';
import 'home_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(

              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text("gautam@gmail.com"),
                  accountName: Text("Gautam Rajbhar"),
                  currentAccountPicture: Image.asset('assets/images/user.png'),


            )),


            ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },

              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white
                ),
              ),

            ),
            ListTile(

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              },
              leading: Icon(
                Icons.history,
                color: Colors.white,
              ),
              title: Text(
                "Order History",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),
              ),

            ),


          ],
        ),
      ),
    );
  }
}
