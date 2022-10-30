import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../components/componets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      backgroundColor: Color(0xffE8E8E8), // eaebed
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          setState(() {
            index = i;
            print(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon:
                Image.asset("images/home.png", width: 25, color: Colors.green),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/analytics.png", width: 25),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/bar-chart.png", width: 25),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/settings.png", width: 25),
            label: "",
          ),
        ],
      ),
      appBar: AppBar(
        // User Profile Image
        leading: Container(
          margin: EdgeInsets.all(8),
          child: Image.asset("images/user.png"),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Andrew White',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.credit_card_outlined,
              color: Colors.black87,
            ),
            onPressed: () {
              print("IconButton");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              // Total Balance
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBoxes(h: 6),
              // Money Text
              Text(
                "\$312.860",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBoxes(h: 20),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonsDesign(),
                  SecondBtn(
                    img: "images/pre2.png",
                    color: Color(0xffE2f1ec), //E2f1ec  faf8eb
                  ),
                  SecondBtn(
                    img: "images/re.png",
                    color: Colors.grey[200]!,
                  ),
                ],
              ),
              SizedBoxes(h: 25),
              Text(
                "Saving Pocket",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBoxes(h: 25),
              // Main Card
              MainCard(
                title: "Vacation to Japan",
                money: "82% of 8.099",
                colorMainContainer: Color(0xff2b3346),
                colorSecondContainer: Colors.white,
                date: "Today",
                icon: Icons.keyboard_double_arrow_right_rounded,
                icon2: Icons.keyboard_double_arrow_left_rounded,
                secondMoney: "+\$87,000",
                txtColor: Colors.white,
                icon3: "images/coin.png",
              ),
              SizedBoxes(h: 20),
              MainCard(
                title: "Iphone 14 Promax",
                money: "78.9% of 1,099",
                colorMainContainer: Colors.white,
                colorSecondContainer: Color(0xffE2f1Ec),
                date: "Oct 1,2022",
                // icon: Icons.keyboard_double_arrow_right_rounded,
                // icon2: Icons.keyboard_double_arrow_left_rounded,
                secondMoney: "+\$12,000",
                icon3: "images/i.png",
              ),
              SizedBoxes(h: 20),
              MainCard(
                title: "Apartment at LA",
                money: "9% of 245.099",
                colorMainContainer: Colors.white,
                colorSecondContainer: Color(0xffE2f1Ec),
                date: "Oct 1,2022",
                // icon: Icons.keyboard_double_arrow_right_rounded,
                // icon2: Icons.keyboard_double_arrow_left_rounded,
                secondMoney: "+\$1450,00",
                icon3: "images/c.png",
              ),
              SizedBoxes(h: 20),
              MainCard(
                title: "Samsung A71",
                money: "65.9% of 1,099",
                colorMainContainer: Colors.white,
                colorSecondContainer: Color(0xffE2f1Ec),
                date: "Oct 1,2022",
                // icon: Icons.keyboard_double_arrow_right_rounded,
                // icon2: Icons.keyboard_double_arrow_left_rounded,
                secondMoney: "+\$13,00",
                icon3: "images/d.png",
              ),
              SizedBoxes(h: 20),
              // MainCard(),
            ],
          ),
        ),
      ),
    );
  }
}
