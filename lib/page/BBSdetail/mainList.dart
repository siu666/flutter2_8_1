import 'package:flutter/material.dart';
class MainList extends StatefulWidget {
  const MainList({ Key? key }) : super(key: key);

  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
_mySliverChildBuilderDelegate() {

  return SliverChildBuilderDelegate(
        (BuildContext context, int index) {
        return Container(
           height: 50,
          color:Colors.red,
          child:Text('${index}')
        );

    },
    childCount: 30,
  );
}