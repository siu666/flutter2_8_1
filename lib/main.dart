import 'package:flutter/material.dart';

void main() => runApp(Test());
class Test extends StatefulWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with AutomaticKeepAliveClientMixin{
  @override
    bool get wantKeepAlive => true; 
  
  ScrollController scrollController=new ScrollController();
  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          )
        )
      ),
    );
  }
}
