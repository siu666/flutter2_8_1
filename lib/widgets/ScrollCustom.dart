import 'package:flutter/material.dart';
// import 'dart:core';
import '../page/BBSdetail/replyList.dart';
class ScrollCustom extends StatefulWidget {
  final List<Widget> slivers;
  const ScrollCustom([this.slivers=const <Widget>[]]) : super();

  @override
  _ScrollCustomState createState() => _ScrollCustomState();
}

class _ScrollCustomState extends State<ScrollCustom> {
  @override
  Widget build(BuildContext context) {
            print('CustomScrollView');

    return CustomScrollView(
       slivers:[
         ReplyList()
         ]
    );
  }
}