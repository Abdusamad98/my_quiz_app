import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_quiz_app/global_widgets/my_custom_app_bar.dart';
import 'package:my_quiz_app/global_widgets/my_custom_button.dart';
import 'package:my_quiz_app/global_widgets/my_custom_input.dart';
import 'package:my_quiz_app/screens/sms_code_screen.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/icons.dart';
import 'package:my_quiz_app/utils/styles.dart';
import 'package:my_quiz_app/utils/utility_functions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController textController = TextEditingController();
  late final FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyCustomAppBar(
        title: "login",
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        Lottie.asset(
          MyIcons.loginLottie,
        ),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: MyCustomInput(
            valueChanged: (value) {
              if (value.length == 13) {
                focusNode.unfocus();
              }
            },
            isPassword: false,
            textController: textController,
            focusNode: focusNode,
            hintText: "Enter your mobile number",
            keyType: TextInputType.phone,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MyCustomButton(
              buttonText: "Login",
              onTap: () {
                if (textController.text == "+998991234567") {
                  UtilityFunctions.getMyToast(message: "Enter SMS code!");
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return SMSCodeScreen();
                  }));
                } else {
                  UtilityFunctions.getMyToast(message: "Invalid number!");
                }
              },
            )),
        Expanded(child: SizedBox()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Text(
            "term’s and conditons apply  POWERD BY - sparrowdevops.com",
            textAlign: TextAlign.center,
            style: MyTextStyle.interRegular400.copyWith(
              fontSize: 16.sp,
              color: MyColors.black.withOpacity(
                0.5,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
