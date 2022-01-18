import 'package:flutter/material.dart';

class PopRoute extends PopupRoute{
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({  
    this.modalBarrierColor,  
    this.barrierLabel,
required this.child
});
  final Color? modalBarrierColor;

  @override
  // Color get barrierColor => null;
  Color get barrierColor => modalBarrierColor ?? Colors.black54;

  
  @override
  bool get barrierDismissible => true;

  @override
  final String? barrierLabel;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;

}