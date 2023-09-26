import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EBFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("../images/profile.jpg"),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Hira Riaz",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 05),
                    Text(
                      "UX/UI Designer",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileInformation(
                            price: "\$8900",
                            label: "Income",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                          ),
                          ProfileInformation(
                            price: "\$5500",
                            label: "Expenses",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                          ),
                          ProfileInformation(
                            price: "\$890",
                            label: "Loan",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff20256B),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    Spacer(),
                    Text(
                      "Sept 13, 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff20256B)),
                    )
                  ],
                ),
              ),
              Details(
                icon: Icons.arrow_upward_outlined,
                title: "Sent",
                subTitle: "Sending Payment to Clients",
                price: "\$150",
              ),
              Details(
                icon: Icons.arrow_downward_outlined,
                title: "Receive",
                subTitle: "Receiving Salary from company",
                price: "\$250",
              ),
              Details(
                icon: Icons.local_atm,
                title: "Loan",
                subTitle: "Loan for the Car",
                price: "\$400",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  final String price;
  final String label;

  ProfileInformation({this.label = '', this.price = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff20256B),
          ),
        ),
        SizedBox(height: 05),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class Details extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final String price;
  Details({
    this.icon = Icons.clear,
    this.title = '',
    this.subTitle = '',
    this.price = '',
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      height: 87,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Color(0xffD5D8F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff20256B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 05,
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffA7A7A7),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Text(
                price,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff20256B),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
