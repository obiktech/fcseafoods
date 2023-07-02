import 'package:fcfreshfoods/components/single_product.dart';
import 'package:flutter/material.dart';


class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 17),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Product(
                      productname:
                          "Chicken Curry Cut - Large Pieces (Large Pack)",
                      productiamge: "Image",
                      productdesc: "description",
                      productprice: 150.4,
                      productweight: "500g"),
                  Product(
                      productname:
                          "Chicken Curry Cut - Large Pieces (Large Pack)",
                      productiamge: "Image",
                      productdesc: "description",
                      productprice: 150.4,
                      productweight: "500g"),
                  Product(
                      productname:
                          "Chicken Curry Cut - Large Pieces (Large Pack)",
                      productiamge: "Image",
                      productdesc: "description",
                      productprice: 150.4,
                      productweight: "500g")
                ],
              ),
            );
  }
}