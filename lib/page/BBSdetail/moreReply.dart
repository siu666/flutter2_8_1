// import 'dart:ffi';

import 'package:flutter/material.dart';

class MoreReply extends StatefulWidget {
  final moreModelSheetHeight;
  const MoreReply({Key? key, this.moreModelSheetHeight}) : super(key: key);

  @override
  _MoreReplyState createState() => _MoreReplyState();
}

class _MoreReplyState extends State<MoreReply> {
  ScrollController _controller = new ScrollController();
  double scrollOffset = 0;
  double startY = 0;

  double moveY = 0;
  bool onTouchDOwn = false;
  bool isScrolling = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        scrollOffset = _controller.offset;
      });
    });
  }

  bool judgeCanDrag() {
    return false;
  }

  Widget build(BuildContext context) {
    return AnimatedContainer(
        color: Colors.red,
        curve: Curves.linear,
        duration: Duration(milliseconds: onTouchDOwn ? 0 : 200),
        transform: Matrix4.translationValues(0, moveY, 0),
        child: Container(
            height: widget.moreModelSheetHeight,
            child: Scaffold(
                body: Listener(
                    onPointerDown: (opm) {
                      print('tag1');
                      if (scrollOffset <= 0) {
                        setState(() {
                          // onTouchDOwn=true;
                          startY = opm.position.dy;
                        });
                      } else {
                        setState(() {
                          isScrolling = true;
                        });
                      }
                    },
                    onPointerMove: (opm) {
                      print('tag2');
                      if (scrollOffset <= 0 && !isScrolling) {
                        var diff = opm.position.dy - startY;
                        print('${diff}diff');
                        //diff>0下拽 diff<0上拽
                        if (diff <= 0 && onTouchDOwn) {
                          setState(() {
                            moveY = 0;
                          });
                        }
                        if (diff < 0 && scrollOffset == 0 && !onTouchDOwn) {
                          print('innerScroll');

                          setState(() {
                            onTouchDOwn = false;
                          });
                        }
                        if (diff > 0 && scrollOffset <= 0) {
                          _controller.jumpTo(0);
                          print('innercantScroll');

                          setState(() {
                            onTouchDOwn = true;
                            moveY = diff;
                          });
                        }
                      }
                    },
                    onPointerUp: (opm) {
                      if (moveY > 150) {
                        Navigator.of(context).pop();
                      } else {
                        setState(() {
                          moveY = 0;
                          isScrolling = false;
                          onTouchDOwn = false;
                        });
                      }
                    },
                    child: NotificationListener(
                        onNotification: (ScrollNotification notification) {
                          if (notification is ScrollStartNotification) {
                            print('tag3');
                          } else if (notification is ScrollUpdateNotification) {
                            print('${onTouchDOwn}onTouchDOwn');

                            print('tag4');
                          } else if (notification is ScrollEndNotification) {}
                          return true;
                        },
                        child: Container(
                          color: Colors.red,
                          child: Flex(
                            direction: Axis.vertical,
                            children: [
                              Container(
                                  height: 54,
                                  color: Color.fromARGB(255, 40, 41, 45),
                                  child: Row(
                                    children: [
                                      Text(
                                        '${3}条回复',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: ListView.builder(
                                    controller: _controller,
                                    physics: onTouchDOwn
                                        ? NeverScrollableScrollPhysics()
                                        : null,
                                    itemCount: 50,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                          height: 50, child: Text('${index}?'));
                                    },
                                  ))
                            ],
                          ),
                          //   CustomScrollView(
                          //   controller: _controller,
                          //   physics: onTouchDOwn?NeverScrollableScrollPhysics():null,
                          //   slivers:[
                          //    _fixedHeader(),
                          //     _listView(),

                          //   ]
                          // ),
                        )
                        // CustomScrollView(
                        //   controller: _controller,
                        //   physics: NeverScrollableScrollPhysics(),
                        //   slivers:[
                        //    _fixedHeader(),
                        //     _listView(),

                        //   ]
                        // )

                        )))));
  }
}

Widget _listView() {
  // RefreshIndicator
  return SliverList(delegate: _mySliverChildBuilderDelegate());
}

_mySliverChildBuilderDelegate() {
  return SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      return Container(
          height: 60, color: Colors.red, child: Text('${index}??'));
    },
    childCount: 50,
  );
}

Widget _fixedHeader() {
  return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _MySliverPersistentHeaderDelegate());
}

class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent = 54;
  final double _maxExtent = 54;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //创建child子组件
    //shrinkOffset：child偏移值minExtent~maxExtent
    //overlapsContent：SliverPersistentHeader覆盖其他子组件返回true，否则返回false
    // print('shrinkOffset = $shrinkOffset overlapsContent = $overlapsContent');
    return Container(
        height: 54,
        color: Color.fromARGB(255, 40, 41, 45),
        child: Row(
          children: [
            Text(
              '${3}条回复',
              style: TextStyle(color: Colors.white),
            ),
            //  Stack(
            //    children: [
            //      Positioned(
            //        width:20,
            //        height: 20,
            //    right:16,
            //    top: 16,
            //    child:
            //  Text('close',style: TextStyle(color:Colors.white))
            //  )
            //    ],
            //  )
          ],
        ));
  }

  //SliverPersistentHeader最大高度
  @override
  double get maxExtent => _maxExtent;

  //SliverPersistentHeader最小高度
  @override
  double get minExtent => _minExtent;

  @override
  bool shouldRebuild(covariant _MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
