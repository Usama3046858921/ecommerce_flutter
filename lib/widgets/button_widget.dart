import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';




Widget btnWidget({required BuildContext context, required Color clr, required String txt, required Function fn}){
  return InkWell(
    child: Container(
      height: 45,
      margin: EdgeInsets.only(right: 10,left: 10),
      width: MediaQuery.of(context).size.width/2.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: clr,

      ),
      child: Center(
        child: Text(txt, style: TextStyle(
          color: Colors.white,
          fontSize: 20,

        ),),
      ),
    ),
    onTap: ()=> fn(),

  );
}