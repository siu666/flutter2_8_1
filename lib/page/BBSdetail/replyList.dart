import 'package:flutter/material.dart';
import './reply.dart';
class ReplyList extends StatefulWidget {
  const ReplyList({ Key? key }) : super(key: key);

  @override
  _ReplyListState createState() => _ReplyListState();
}

class _ReplyListState extends State<ReplyList> {
  List<Map> ListData=[];
  @override
  void initState() {
     getDataList();
    // TODO: implement initState
    super.initState();
  }
  void  getDataList(){
    //  return Future.delayed(Duration(milliseconds: 1000),(){
       List<Map> arr=[];
    for (var i = 0; i < 100; i++) {
      List<Map> comments = [
        {'wasCommentedUserName': "ww", 'userName': 'rrr', 'comment': 'content'},
        {'wasCommentedUserName': "ww", 'userName': 'rrr', 'comment': 'content'},
        // {'wasCommentedUserName':"ww",'userName':'rrr','comment':'content'}
      ];
      // if((i+1)%2==0){

      //   comments=[{'wasCommentedUserName':"ww",'userName':'rrr','comment':'content'}];
      // }
      arr.add({
        'comment': '${i}publish',
        'likeNum': 2,
        'haveLike': false,
        'commentNum': 23,
        'comments': comments
      });
     
    }
     setState(() {
        ListData=arr;
      });
    //  });
  }
  Widget build(BuildContext context) {
                print('SliverList');

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
      return 
      Reply(
       main:false,
       item:ListData[index]
      );

    },
    childCount: ListData.length,
  )
  );
  }
}