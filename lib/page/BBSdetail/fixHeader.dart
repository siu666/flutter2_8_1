import 'package:flutter/material.dart';
class FixHeader extends StatelessWidget {
  const FixHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return SliverPersistentHeader(
        pinned: true,
        // floating: true,
        delegate: _MySliverPersistentHeaderDelegate());
  }
}
class _MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent = 54;
  final double _maxExtent = 54;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 54,
      color:Colors.teal,
      // color: Color.fromARGB(255, 29, 30, 34),
      child: Container(
          padding: EdgeInsets.only(top: 16, left: 16),
          // alignment: Alignment.center,
          // decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 40, 41, 45),
          //     borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(16), topRight: Radius.circular(16))),
          child: Text('评论',
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
  bool shouldRebuild(_MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}