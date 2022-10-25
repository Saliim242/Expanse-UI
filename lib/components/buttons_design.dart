import 'package:flutter/material.dart';

class ButtonsDesign extends StatelessWidget {
  const ButtonsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Icon(Icons.mail_lock),
          Text("Send"),
        ],
      ),
    );
  }
}
