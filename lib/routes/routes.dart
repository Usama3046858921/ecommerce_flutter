


import 'package:flutter/material.dart';

class PageRouting{
  goToNextPage(BuildContext context, Widget NavigatorTo){
    Navigator.push(context, MaterialPageRoute(builder: (context) => NavigatorTo));
}}