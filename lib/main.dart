import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/constants/theme.dart';
import 'package:instagram_clone/view/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 840),
      minTextAdapt: true,
      builder: ((context, child) {
        return MaterialApp(
          title: 'Instagram Clone',
          theme: lightTheme(),
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      }),
    );
  }
}
