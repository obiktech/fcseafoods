import 'package:flutter/material.dart';


class ProductDetailedView extends StatefulWidget {
  const ProductDetailedView({super.key, required this.productname});
  final String productname;


  @override
  State<ProductDetailedView> createState() => _ProductDetailedViewState();
}

class _ProductDetailedViewState extends State<ProductDetailedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(children: [
            SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
               child: Text(widget.productname),)

          ]),
        ),
        ),
    );
  }
}