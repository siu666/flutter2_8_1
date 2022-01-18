
import 'package:flutter/material.dart';
import '../../utils/CustomColor.dart';

// import 'package:flutter/rendering.dart';
class Reply extends StatelessWidget {
  final bool main;
  final dynamic item;
  final dynamic likeChange;
  final dynamic showMore;
  const Reply(
      {Key? key, this.main = true, this.item, this.likeChange, this.showMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('${hasComments(item)}');
    // return Container(
    //   child:Text('${item}')
    // );
    return Container(
        decoration: 
        BoxDecoration(
        borderRadius: main ? BorderRadius.all(Radius.circular(16)) : null),
        color: Customcolor.colorBg,
        padding: EdgeInsets.all(16),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //头像
              ClipOval(
                  child: FadeInImage(
                      width: 26,
                      height: 26,
                      placeholder: AssetImage(
                          'assets/images/placeholder/bbs_default.png'),
                      image: NetworkImage(
                          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic_source%2F22%2F30%2F02%2F22300226c063258c774f01b9f6e983f2.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1642662590&t=5b20ec422f776c0a6fdd5d9df6170703')
                          )
                          ),
              SizedBox(
                width: 12,
              ),
              Text(
                '用户名',
                // style: TextStyle(
                //     color: Color.fromARGB(255, 196, 196, 196), fontSize: 14
                //     ),
              )
            ],
          ),
          SizedBox(
            height: main ? 16 : 7,
          ),
          Container(
              margin: !main ? EdgeInsets.only(left: 38) : null,
              alignment: Alignment.topLeft,
              constraints: BoxConstraints(minHeight: 20),
              child: Flex(
                direction: Axis.vertical,
                // mainAxisAlignment:MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${item['comment']}',
                    style: TextStyle(color: Colors.white, height: 1.4),
                  ),
                  SizedBox(
                    height: main ? 16 : 7,
                  ),
                  hasComments(item)
                      ? GestureDetector(
                          onTap: () => showMore(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: item['comments']
                                      .sublist(0, 2)
                                      .map<Widget>((value) {
                                    return Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          value['userName'],
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        value['wasCommentedUserName'] != ''
                                            ? Container(
                                                margin: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                child: Text('回复',
                                                    // style: TextStyle(
                                                    //     color: Color.fromARGB(
                                                    //         255,
                                                    //         136,
                                                    //         138,
                                                    //         141))
                                                            ),
                                              )
                                            : SizedBox.shrink(),
                                        value['wasCommentedUserName'] != ''
                                            ? Text(
                                                value['wasCommentedUserName'],
                                                style: TextStyle(
                                                    color: Colors.white))
                                            : SizedBox.shrink(),
                                        Text('：${value['comment']}',
                                            // style: TextStyle(
                                            //     color: Color.fromARGB(
                                            //         255, 136, 138, 141)
                                            //         )
                                                    )
                                      ],
                                    );
                                  }).toList(),
                                ),
                                item['comments'].length > 2
                                    ? Text('223')
                                    : SizedBox.shrink()
                              ]))
                      : SizedBox.shrink(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(children: [
                          Text('${main ? '发布于' : ''}刚刚'),
                          SizedBox(width: 10),
                          Text('19阅读'),
                        ]),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints(minWidth: 60, minHeight: 22),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/bbs/comment.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('${item['commentNum']}'),
                                ],
                              ),
                            ),
                            // AssetImage('assets/images/bbs/comment.png'),
                            GestureDetector(
                              onTap: () => {likeChange(item), print('323')},
                              child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      minWidth: 60, minHeight: 22),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        IconData(0xe609,
                                            fontFamily: 'myiconfont',
                                            matchTextDirection: true),
                                        // color:
                                        //     Color.fromARGB(255, 152, 154, 155),
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text('${item['likeNum']}')
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ])
                ],
              )
              ),
        ]
        )
        );
       }
}

bool hasComments(item) {
  return item.containsKey('comments') && item['comments'].length > 0;
}
