import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color,this.text,this.ontap}) ;
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
      child: Container(
        padding: EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height:65,
        color: color,
        child: Text(text!,style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    );
  }
}

