import 'package:flutter/material.dart';

class BottomInputDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
        curve: Curves.easeOutQuad,
        padding: MediaQuery.of(context).viewInsets, // 我们可以根据这个获取需要的padding
        duration: const Duration(milliseconds: 350),
        child: Container(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 29, 30, 34),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            ),
            height: 148,
            child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      ClipOval(
                        child: FadeInImage(
                            width: 26,
                            height: 26,
                            placeholder: AssetImage(
                                'assets/images/placeholder/bbs_default.png'),
                            image: NetworkImage(
                                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic_source%2F22%2F30%2F02%2F22300226c063258c774f01b9f6e983f2.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1642662590&t=5b20ec422f776c0a6fdd5d9df6170703')),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('用户',
                          style: TextStyle(
                              color: Color.fromARGB(255, 196, 196, 196)))
                    ]),
                    SizedBox(
                      height: 16,
                    ),
              
                  Flex(
                    direction:Axis.horizontal,
                    children: [
                      Expanded(
                        flex:1,
                        child: 
                        Container(
                        height: 70,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: Color.fromARGB(255, 40, 41, 45),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '我来说几句...',
                            hintStyle: TextStyle(color:Color.fromARGB(255, 136,138,141)),
                            isCollapsed: true,
                            border: InputBorder.none,
                          ),
                          maxLines: 3,
                          minLines: 1,
                          style: TextStyle(
                            height: 1.0,
                            color: Colors.white,
                          ),
                          autofocus: true,
                          // decoration:
                        ))
                      ),
                      Container(
                        alignment:Alignment.center,

                  width: 68,
                  height: 70,
                  // color:Colors.red,
                  child: Text(
                    '发送',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 255, 156, 68)),
                  )),
                      
                    ],
                  ),
                    
                  ],
                ),
              ),
            );
  }
}
