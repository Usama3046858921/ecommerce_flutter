
import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:ecommerce/screens/signUpScreen.dart';
import 'package:ecommerce/styles/login_screen_styles.dart';
import 'package:ecommerce/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../widgets/text_form_field_widgets.dart';
import 'homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              buildTopPart(),
              buildBottomPart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          'images/ecommerce_login.jpg',
          height: 150,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 20, left: 15, bottom: 10),
          child: Column(
            children: [
              textFormFieldWidgets('E-mail', false),
              textFormFieldWidgets('Password', true),
              Row(

                children:  [
                   btnWidget(context: context, clr: appColors.baseBlackColor, txt: 'SIGN IN', fn:()=> PageRouting().goToNextPage(context, HomePage())),
                  btnWidget(context: context, clr: appColors.baseDarkPinkColor, txt: 'SIGN UP', fn:()=> PageRouting().goToNextPage(context, SignUpScreen())),

                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Forget Password?',
                style: login_screen_styles.forgotPasswordStyles,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildBottomPart() {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'or sign in with social networks',
            style: login_screen_styles.signInSocialStyles,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 40, left: 40, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 90,
                  child: ElevatedButton(
                      onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),child: SvgPicture.asset('images/fb.svg',fit: BoxFit.cover),
                  ),
                ),
                Container(
                    height: 60,
                    width: 90,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: SvgPicture.asset('images/google.svg',fit: BoxFit.fill,))),
                Container(
                  height: 60,
                  width: 90,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF00bfff),
                    ),
                    child: SvgPicture.asset('images/twitter.svg',fit: BoxFit.cover,),),
                ),


              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Sign up',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


}