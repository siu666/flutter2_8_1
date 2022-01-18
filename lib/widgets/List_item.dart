import 'package:flutter/material.dart';
class ListItem extends StatelessWidget {
  const ListItem({Key? key,this.index=0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
        child:Text('${index}')
    );
  }
}
