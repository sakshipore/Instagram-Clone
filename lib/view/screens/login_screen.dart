import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/constants/colors.dart';
import 'package:instagram_clone/view/widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundLight,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          size: 18.h,
          color: AppColors.text,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 56.h,
            // ),

            SizedBox(
              height: 112.h,
            ),
            SvgPicture.asset(
              "assets/images/login_screen/instagram_logo.svg",
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 40.h,
            ),
            TextInput(
              controller: _emailController,
              labelText: "ABC",
            ),
          ],
        ),
      ),
    );
  }
}
