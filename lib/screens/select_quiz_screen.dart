import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_quiz_app/data/quiz_repository.dart';
import 'package:my_quiz_app/global_widgets/select_test_item.dart';
import 'package:my_quiz_app/model/quiz_data.dart';
import 'package:my_quiz_app/screens/my_quiz_screen.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/icons.dart';

class SelectQuizScreen extends StatefulWidget {
  const SelectQuizScreen({Key? key}) : super(key: key);

  @override
  State<SelectQuizScreen> createState() => _SelectQuizScreenState();
}

class _SelectQuizScreenState extends State<SelectQuizScreen> {
  List<QuizData> englishDataSet = QuizRepository.getEnglishQuizzes();
  List<QuizData> mathDataSet = QuizRepository.getMathQuizzes();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.C_4047C1,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.C_4047C1,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              MyIcons.user,
              width: 40,
              height: 40,
            ),
            Image.asset(
              MyIcons.logo,
              height: 40,
            ),
            Image.asset(
              MyIcons.wallet,
              width: 40,
              height: 40,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SelectTestItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return MyQuizScreen(
                          quizList: englishDataSet,
                           quizName:"English"
                        );
                      },
                    ),
                  );
                },
                gradientColors: MyColors.redBar,
                text: "Engish",
                questionCount: englishDataSet.length,
                iconPath: MyIcons.bookStack,
                direction: 1,
              ),
              SelectTestItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return MyQuizScreen(
                      quizList: mathDataSet,
                        quizName:"Math"
                    );
                  }));
                },
                gradientColors: MyColors.redBar,
                text: "Math",
                questionCount: mathDataSet.length,
                iconPath: MyIcons.bookStack,
                direction: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
