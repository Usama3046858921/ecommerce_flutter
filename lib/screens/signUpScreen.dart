import 'package:ecommerce/appColors/appColors.dart';
import 'package:ecommerce/screens/login_Screen.dart';
import 'package:ecommerce/styles/signUp_screen_styles.dart';
import 'package:flutter/material.dart';
import '../../widgets/text_form_field_widgets.dart';
import '../routes/routes.dart';
import '../widgets/button_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            buildTopPart(),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }

  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset('images/ecommerce_login.jpg',height: 150,),
        textFormFieldWidgets("Full Name", false),
        textFormFieldWidgets("Email", false),
        textFormFieldWidgets("Password", true),
        textFormFieldWidgets("Confirm Password", true),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          // child:  const button_widget(text: 'Create an account', color: appColors.baseDarkPinkColor,
          // ontap: onpress,),
        ),
        RichText(
          text: const TextSpan(
            text: 'By signing up you agrees to our\n',
              style: signUp_screen_styles.signUpStyle,
              children: [
              TextSpan(
                text: 'Terms',
                style: signUp_screen_styles.termsTextStyle,
              ),
                TextSpan(
                  text: ' and ',
                  style: signUp_screen_styles.andTextStyle,
                ),
                TextSpan(
                  text: 'Conditions of Use',
                  style: signUp_screen_styles.termsTextStyle,
                ),
            ]
          ),

        ),
        Row(
          children: [
            btnWidget(context: context, clr: appColors.baseBlackColor, txt: 'SIGN IN', fn:()=> PageRouting().goToNextPage(context, LoginScreen())),
            btnWidget(context: context, clr: appColors.baseDarkPinkColor, txt: 'SIGN UP', fn:()=> PageRouting().goToNextPage(context, SignUpScreen())),
          ],
        ),
      ],
    );
  }
  Widget buildBottomPart(){
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('or sign in with social networks',style: signUp_screen_styles.signInSocialStyle,),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 40,left: 40,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 90,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('images/facebook.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
                Container(
                    width: 90,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('images/google.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
                Container(
                    width: 90,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      image: const DecorationImage(
                        image: AssetImage('images/twitter.png'),
                        fit: BoxFit.fill,
                      ),
                    )
                ),


                // ElevatedButton(
                //     onPressed: () {},
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         side: BorderSide(
                //           width: 0.5,
                //           color: appColors.baseGrey40Color,
                //         ),
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //     ),
                //     child: Text(''))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text('Sign up',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
         ]
          ),);



  }
}
