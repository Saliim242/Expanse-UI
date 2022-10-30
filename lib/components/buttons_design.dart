import 'package:expance/components/componets.dart';
import 'package:flutter/material.dart';

class ButtonsDesign extends StatelessWidget {
  const ButtonsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff2B3346),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xff19A773),
            child: Image.asset("images/pre1.png"),
          ),
          SizedBoxes(w: 20),
          Text(
            "Send",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
