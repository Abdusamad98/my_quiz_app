import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/screens/login_screen.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return LoginScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.C_4047C1,
        ),
      ),
      backgroundColor: MyColors.C_4047C1,
      body: Center(
        child: Text(
          "Welcome",
          style: MyTextStyle.interBold700.copyWith(
            fontSize: 24.sp,
            color: MyColors.white,
          ),
        ),
      ),
    );
  }
}
