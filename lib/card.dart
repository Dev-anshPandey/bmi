import 'package:flutter/material.dart';
class Reuseable extends StatelessWidget {
  final Color colour;
  final child;
  final re;
  Reuseable(this.colour,{this.re,this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: re,
      child: Container(
      child: child,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: EdgeInsets.all(10),
            ),
    );
  }
}
