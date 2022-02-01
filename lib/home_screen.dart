import 'package:card_app/test_file.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'item.dart';
import 'item_detail.dart';


class HomeScreen extends StatefulWidget {
 const HomeScreen({Key? key}) : super(key: key);



  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  List<Item> items = [
    Item("assets/images/momos.jpg", "aaaaaa", "AAAAAA"),
    Item("assets/images/bonda.jpg", "bbbbbb", "AAAAAA"),
    Item("CCCCCCC", "ccccccccc", "AAAAAA"),
    Item("DDDDD", "dddddddd", "AAAAAA"),
    Item("EEEEEE", "eeeeeee", "AAAAAA"),
    Item("AAAAA", "aaaaaa", "AAAAAA"),
    Item("BBBBBB", "bbbbbb", "AAAAAA"),
    Item("CCCCCCC", "ccccccccc", "AAAAAA"),
    Item("DDDDD", "dddddddd", "AAAAAA"),
    Item("EEEEEE", "eeeeeee", "AAAAAA"),
    Item("AAAAA", "aaaaaa", "AAAAAA"),
    Item("BBBBBB", "bbbbbb", "AAAAAA"),
    Item("CCCCCCC", "ccccccccc", "AAAAAA"),
    Item("DDDDD", "dddddddd", "AAAAAA"),
    Item("EEEEEE", "eeeeeee", "AAAAAA"),
    Item("AAAAA", "aaaaaa", "AAAAAA"),
    Item("BBBBBB", "bbbbbb", "AAAAAA"),
    Item("CCCCCCC", "ccccccccc", "AAAAAA"),
    Item("DDDDD", "dddddddd", "AAAAAA"),
    Item("ZZZZZZZZ", "ZZZZZZZZ", "ZZZZZZZZZZ"),

  ];

  Widget itemTemplate(Item item){
    return GestureDetector(
      onTap: (){
        print(item.itemName);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemDetail(item)),
        );
        print("JJJJJJJJ");
      },
      child: Card(


        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),

        child: Row(

          children: [

            ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(items[1].itemImage),
                width: 100.0,
                height: 100.0,
              ),
            ),

            //  Image.asset('assets/images/momos.jpg'),

            Column(
              children: [
                Text('${item.itemName}'),
                Text('${item.itemPrice}'),
              ],
            )


          ],


        ),





        // child: Column(
        //   children: <Widget>[
        //     Text(
        //       item.itemImage,
        //       style: TextStyle(
        //         fontSize: 18.0,
        //         color: Colors.amber,
        //       ),
        //     ),
        //     SizedBox(height: 6.0,),
        //     Text(
        //       item.itemPrice,
        //       style: TextStyle(
        //         fontSize: 14.0,
        //         color: Colors.grey[800]
        //       ),
        //       ),
        //
        //
        //
        //   ],
        // ),


      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:  Text("Zomato"),),
        // body: Column(
        //   // children: items.map((item) => Text('${item.itemImage}  ${item.itemName}  ${item.itemPrice}')).toList(),
        //
        //   children: items.map((item) => itemTemplate(item)).toList(),
        //
        // ),

        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context,int index){

              return itemTemplate(items[index]);

            }



        ),


        drawer: MyDrawer(),

      ),
    );
  }
}
