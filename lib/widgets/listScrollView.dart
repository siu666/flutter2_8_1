import 'package:flutter/material.dart';
import './List_item.dart';

class ScrollList extends StatefulWidget {
  const ScrollList({Key? key}) : super(key: key);

  @override
  _ScrollListState createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
       return ListItem(index:index);
    },
      itemCount: 100,
    // itemCount: 20,
    );
  }
}
