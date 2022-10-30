import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:expance/components/componets.dart';
import 'package:expance/models/expanse_model.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard(
      {Key? key,
      required this.title,
      required this.money,
      this.icon,
      required this.colorSecondContainer,
      required this.date,
      required this.secondMoney,
      required this.colorMainContainer,
      this.icon2,
      this.txtColor,
      this.icon3})
      : super(key: key);

  final String title;
  final String money;
  final IconData? icon;
  final IconData? icon2;
  final String? icon3;
  final Color colorSecondContainer;
  final Color colorMainContainer;
  final Color? txtColor;
  final String date;
  final String secondMoney;

  @override
  Widget build(BuildContext context) {
    final ExpenseModel model;
    return Column(
      children: [
        ClipPath(
          clipper: CouponClipper(
            direction: Directionality.of(context),
            curvePosition: 35,
            curveRadius: 36,
            curveAxis: Axis.vertical,
          ),
          child: Container(
            height: 115,
            // margin: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              color: colorMainContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xff19A773),
                    child: Image.asset(icon3 ?? "", color: Colors.white),
                  ),
                  SizedBoxes(w: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$title",
                        style: TextStyle(
                          fontSize: 20,
                          color: txtColor,
                        ),
                      ),
                      SizedBoxes(h: 8),
                      Text(
                        "$money",
                        style: TextStyle(fontSize: 16, color: txtColor),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorSecondContainer,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(icon),
                            Text(
                              "$date",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Icon(icon2),
                          ],
                        ),
                        SizedBoxes(h: 5),
                        Text(
                          "$secondMoney",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
