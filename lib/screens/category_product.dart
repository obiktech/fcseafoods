import 'package:fcfreshfoods/components/single_product.dart';
import 'package:fcfreshfoods/models/category.dart';
import 'package:fcfreshfoods/models/productmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key, required this.categoryid});

  final int categoryid;

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  List<ProductModel> products = [];

  void getdata() async {
    // var resp =await  http.post(Uri.parse(Constants.host+"getcategory.php"));
    // categories = (json.decode(resp.body) as List).map((i) =>
    //           Category.fromJson(i)).toList();
    //           setState(() {

    //           });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 27,
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.back,
            ),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  products.length.toString() + " Items",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.square_fill_line_vertical_square_fill,
                        color: Colors.cyan,
                        size: 20,
                      ),
                      Text("  Filter",
                          style: TextStyle(
                            fontSize: 19,
                          ))
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      elevation: 0),
                ),
              ],
            ),
          ),
          Divider(),
          Row(
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
                  

            ],
          ),
          
                
                ]
                )));
              
        
            
          
        
      
    
  }
}
