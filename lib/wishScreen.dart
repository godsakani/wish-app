import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class WishScreen extends StatefulWidget {
  const WishScreen({ Key? key }) : super(key: key);

  @override
  State<WishScreen> createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
   
   int Wishnum = 1;
    void Wish() {
      setState(() {
      Wishnum = Random().nextInt(5) + 1;
    });
    }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(30.0),
              onPressed: () {
                Wish();
                if (Wishnum == 1){
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    text: "Your Wish is Granted!",
                  );
                }else if (Wishnum == 2) {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.error,
                    text: "Your Wish Can't be Granted!",
                  );
                } 
              },
              child: Image.asset('images/ball$Wishnum.png')
              ),
            ),
        ]
        ),
      );
  }
}