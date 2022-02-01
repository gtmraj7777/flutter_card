
import 'package:flutter/material.dart';

import 'item.dart';

class ItemDetail extends StatefulWidget {
 // const ItemDetail({Key? key}) : super(key: key);

  late Item item;


  ItemDetail(this.item);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Odering...'),),
        body: Container(
          color: Colors.amber,
          child: Center(
            child: Text("${widget.item.itemName}"),
          ),
        ),
      ),
    );
  }
}
