
import 'package:flutter/material.dart';

import 'Order.dart';
import 'drawer.dart';
import 'item.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {



  List<Item> items = [
    Item("assets/images/momos.jpg", "aaaaaa", "AAAAAA"),
    Item("assets/images/bonda.jpg", "bbbbbb", "AAAAAA"),
    Item("CCCCCCC", "ccccccccc", "AAAAAA"),
    Item("DDDDD", "dddddddd", "AAAAAA"),
    Item("EEEEEE", "eeeeeee", "AAAAAA"),
  ];



  List<Order> orders = [
    Order("assets/images/momos.jpg","Pastry","45","2","90"),
    Order("assets/images/momos.jpg","Pastry","45","2","90"),
    Order("assets/images/momos.jpg","Pastry","45","2","90"),
    Order("assets/images/momos.jpg","Pastry","45","2","90"),
    Order("assets/images/momos.jpg","Pastry","45","2","90"),
  ];


  Widget itemTemplate(Order order){
    return GestureDetector(
      // onTap: (){
      //   print(item.itemName);
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ItemDetail(item)),
      //   );
      //   print("JJJJJJJJ");
      // },
      child: Card(


        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

           children: [

            ClipRRect(
              borderRadius: new BorderRadius.circular(10.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(orders[1].foodImage),
                width: 50.0,
                height: 50.0,
              ),
            ),

            //  Image.asset('assets/images/momos.jpg'),

            // Column(
            //   children: [
            //     Text('${item.itemName}'),
            //     Text('${item.itemPrice}'),
            //   ],
            // )

            Text("${order.foodName}"),
            Text("${order.foodPrice}"),
            Text("${order.foodQuantity}"),
            Text("${order.totalPrice}"),


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
        appBar: AppBar(title: Text("Order History"),),
          body: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (BuildContext context,int index){

            return itemTemplate(orders[index]);

          }



      ),

        drawer: MyDrawer(),
      ),
    );
  }
}
