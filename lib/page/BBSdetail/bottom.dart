import 'package:flutter/material.dart';
import '../../widgets/BottomInputDialog.dart';
import '../../widgets/PopRoute.dart';
class BottomComp extends StatefulWidget {
  const BottomComp({Key? key}) : super(key: key);

  @override
  _BottomCompState createState() => _BottomCompState();
}

class _BottomCompState extends State<BottomComp> {
//   with TickerProviderStateMixin {
//  @override
//  void initState(){
//    super.initState();
//    controller =
//         BottomSheet.createAnimationController(this);
//     controller.duration = Duration(seconds: 3);
//  }
//    @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return 
    Stack(
      children: [
    
    
      Positioned(
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        height: 100,
        left: 0,
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet(
                    isScrollControlled:true,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return BottomInputDialog();
                      });
            // Navigator.push(context, PopRoute(child: BottomInputDialog()));

          },
          child:Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(16, 28, 16, 0),
            child: Flex(
              direction: Axis.horizontal,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                    child: FadeInImage(
                        width: 26,
                        height: 26,
                        placeholder: AssetImage(
                            'assets/images/placeholder/bbs_default.png'),
                        image: NetworkImage(
                            'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic_source%2F22%2F30%2F02%2F22300226c063258c774f01b9f6e983f2.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1642662590&t=5b20ec422f776c0a6fdd5d9df6170703'))),
                SizedBox(width: 12),
                Expanded(
                  flex: 1,
                  child: 
                Container(
                  height: 32,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left:13),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 50, 55),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('我来说几句')],

                )
                )
                )
                
              ],
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(0, 28, 30, 34),
                  Color.fromARGB(255, 23, 24, 28),
                ],
                    stops: [
                  0.0,
                  0.28
                ]))
            // child:
            )
            )
            )
            
            // Positioned(
            //   bottom:0 ,
            // child: Container(
            //   height: 100,
            //   width: MediaQuery.of(context).size.width,
            //   color:Colors.red,
            //   child: TextField(),
            // )
            // )
      ],
    );
  }
}

