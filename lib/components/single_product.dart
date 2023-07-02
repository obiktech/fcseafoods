import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product(
      {super.key,
      required this.productname,
      required this.productiamge,
      required this.productdesc,
      required this.productprice,
      required this.productweight});

  final String productname;
  final String productiamge;
  final String productdesc;
  final double productprice;
  final String productweight;

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool cart_adding = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(4),
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width/2.1,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Image.asset("assets/chickenbreast.jpg"),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                widget.productname,
                textAlign: TextAlign.left,
                textScaleFactor: 1.1,
                maxLines: 2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(widget.productweight),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: [
                  Text(
                    "Rs. " + widget.productprice.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: () async {
                        setState(() {
                          cart_adding = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        setState(() {
                          cart_adding = false;
                        });
                      },
                      child: cart_adding
                          ? Icon(
                              CupertinoIcons.checkmark_alt,
                              size: 37,
                              color: Colors.blue,
                            )
                          : Icon(
                              CupertinoIcons.cart_badge_plus,
                              size: 37,
                              color: Colors.deepOrange,
                            ))
                ],
              ),
            ),
          ],
        ));
  }
}
