import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: IconButton(
      
    icon: Icon(CupertinoIcons.back, ),

    onPressed: () => Navigator.of(context).pop(),
  ),titleSpacing: 0,title: Text("Back"), leadingWidth: 27,backgroundColor: Colors.white, foregroundColor: const Color.fromARGB(255, 207, 128, 122),elevation: 0, ),
  
  body: Container(),
  );
  }
}