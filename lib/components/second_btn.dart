import 'package:expance/components/componets.dart';
import 'package:flutter/material.dart';

class SecondBtn extends StatelessWidget {
  const SecondBtn({Key? key, required this.img, required this.color})
      : super(key: key);
  final String img;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 85,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: color,
          width: 6,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Image.asset(
              img,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
