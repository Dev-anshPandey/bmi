import 'package:flutter/material.dart';
class cr extends StatelessWidget {
  final IconData ic;
  final String tx;
  cr(this.ic, this.tx);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
           ic,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
         tx,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        )
      ],
    );
  }
}
