

import 'package:ecommerce/styles/home_screen_styles.dart';
import 'package:ecommerce/svg_images/svg_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: Container(

      ),
    );
  }
  _AppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: () {
          Navigator.pop(context);
      },
      ),


      title: Column(
        children: [
          Text(
            'Welcome',style: HomeScreenStyles.appBarUpperTitleStyles,
          ),
          const Text(
            'Shopping',style: HomeScreenStyles.appBarBottomTitleStyles,
          )
        ],
      ),
      actions: [
        IconButton(onPressed: () {  }, icon: RotationTransition(turns: const AlwaysStoppedAnimation(90/360),
        child: SvgPicture.asset(SvgImages.filter),
        ),
        ),
         SizedBox(
          width: 30,
        ),
        IconButton(onPressed:(){}, icon: SvgPicture.asset('images/search.svg'),)
      ],


    );
  }
}

