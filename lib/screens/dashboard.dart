import 'package:fcfreshfoods/components/best_seller.dart';
import 'package:fcfreshfoods/components/super_fresh.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List banners = [
    Image.asset("assets/banner1.png"),
    Image.asset("assets/banner2.jpg"),
    Image.asset("assets/banner3.jpg")
  ];

  String city = "Kolkata";
  String address = "Select Location";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Row(
          children: [
            Icon(
              Icons.location_pin,
              color: Colors.blue,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  city,
                ),
                Text(
                  address,
                  textScaleFactor: 0.7,
                ),
              ],
            )
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/cart");
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            width: 4,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 14,
            ),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Image.asset("assets/chicken.png"),
                        ),
                        Text("Chicken")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Image.asset("assets/mutton.png"),
                        ),
                        Text("Mutton")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Image.asset("assets/eggs.png"),
                        ),
                        Text("Eggs")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Image.asset("assets/fish.png"),
                        ),
                        Text("Fish & SeaFoods")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                          child: Image.asset("assets/more.png"),
                        ),
                        Text("View All")
                      ],
                    ),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: banners[0],
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Best Sellers",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text("Most Popular of Us"),
            SizedBox(
              height: 8,
            ),
            BestSeller(),
            SizedBox(
              height: 8,
            ),
            Text(
              "Super Fresh",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text("Fresher tahn fresh"),
            SizedBox(
              height: 8,
            ),
            SuperFresh()
          ],
        ),
      ),
    );
  }
}
