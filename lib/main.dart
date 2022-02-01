import 'package:flutter/material.dart';

import 'item.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {



  List<Item> items = [
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
      },
      child: Card(


        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Column(
          children: <Widget>[
            Text(
              item.itemImage,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              item.itemPrice,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
              ),
              ),



          ],
        ),


      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:  Text("Card"),),
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
        
        
        
        
      ),
    );
  }
}
