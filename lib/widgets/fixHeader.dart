import 'package:flutter/material.dart';

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
      color: Color.fromARGB(255, 29, 30, 34),
      child: Container(
          padding: EdgeInsets.only(top: 16, left: 16),
          // alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 40, 41, 45),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Text('评论xs',
              style: TextStyle(color: Colors.white, fontSize: 16))),
    );
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