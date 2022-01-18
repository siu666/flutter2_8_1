import 'package:flutter/material.dart';

class TestDetail extends StatefulWidget {
  const TestDetail({ Key? key }) : super(key: key);

  @override
  _TestDetailState createState() => _TestDetailState();
}

class _TestDetailState extends State<TestDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      
       child: CustomScrollView(
         slivers: <Widget>[
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverToBoxAdapter(
             child: Container(height:200,child:Text('123')),
           ),
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (BuildContext content,int index){
                 print('123');
              return Container(
                height: 80,
                child: Text('1223'),
              );
           },
           childCount:100))
         ],
       )
    )
    );
  }
}