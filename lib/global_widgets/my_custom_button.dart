import 'package:flutter/material.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({Key? key, required this.buttonText, required this.onTap}) : super(key: key);

  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: MyColors.C_FCA82F,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: MyTextStyle.interMedium500.copyWith(
              fontSize: 20,
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
