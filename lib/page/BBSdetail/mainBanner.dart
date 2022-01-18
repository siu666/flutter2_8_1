import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:Container(
          height: 100,
          color:Colors.red
      ),
    );
  }
}
