import 'package:fcfreshfoods/screens/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int _total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),leading: IconButton(
    icon: Icon(CupertinoIcons.back, ),
    onPressed: () => Navigator.of(context).pop(),
  )),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              child: ListView.builder(itemBuilder: (context, index) => Container(height: 115, width: 145,color: Colors.green, margin: EdgeInsets.symmetric(vertical: 8),), itemCount: 15,),
          
            ),Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height/1.2 ),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Row(children: [Text("Total Amount", textScaleFactor: 1.3, style: TextStyle(fontWeight: FontWeight.bold),), 
                  SizedBox(width: 8,), Text("Rs. ", textScaleFactor: 1.5, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),), 
                  Text(_total.toString(), textScaleFactor: 1.5,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)],),
                ),
                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(),));
                  
                }, child: Text("CheckOut"),style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 152, vertical: 18, ), 
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                
                )

              ],),
            )
          ],
        ),
      ),
    );
  }
}