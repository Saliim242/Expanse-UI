import 'package:flutter/material.dart';

class SizedBoxes extends StatelessWidget {
  SizedBoxes({this.h, this.w});

  final double? h;
  final double? w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
