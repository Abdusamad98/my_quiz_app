import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSize {
  const MyCustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: MyColors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark),
      title: Text(
        title,
        style: MyTextStyle.interRegular400.copyWith(
          fontSize: 24.sp,
          color: MyColors.black,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.h);

  @override
  Widget get child => throw UnimplementedError();
}
