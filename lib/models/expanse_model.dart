import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseModel {
  final String? title;
  final String? money;
  final String? icon;
  final Color? colorSecondContainer;
  final String? date;
  final String? secondMoney;

  ExpenseModel(
      {this.title,
      required this.money,
      required this.icon,
      required this.colorSecondContainer,
      required this.date,
      required this.secondMoney});
}

var listExpense = [
  ExpenseModel(
    title: "Vacation to Japan",
    money: "82% of \$8.099",
    colorSecondContainer: Colors.white,
    date: "Today",
    icon: "images/left.png",
    secondMoney: "+\$87,00",
  ),
];
