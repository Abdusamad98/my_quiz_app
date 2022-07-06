import 'package:flutter/material.dart';
import 'package:my_quiz_app/global_widgets/expandable_widget.dart';
import 'package:my_quiz_app/global_widgets/my_custom_button.dart';
import 'package:my_quiz_app/global_widgets/variant_tem.dart';
import 'package:my_quiz_app/model/quiz_data.dart';
import 'package:my_quiz_app/screens/result_screen.dart';
import 'package:my_quiz_app/utils/colors.dart';
import 'package:my_quiz_app/utils/styles.dart';
import 'package:my_quiz_app/utils/utility_functions.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({
    Key? key,
    required this.quizList,
    required this.quizName,
  }) : super(key: key);

  final List<QuizData> quizList;
  final String quizName;

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  int currentQuestionIndex = 0;
  String selectedVariant = "";
  int trueAnswersCount = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.C_4047C1,
        title: Text("Quiz Screen"),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.quizName,
              style: MyTextStyle.interBold700.copyWith(
                fontSize: 28,
                color: MyColors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ExpandableWidget(
              dataLength: widget.quizList.length,
              expandableValue: currentQuestionIndex + 1,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Question:${currentQuestionIndex + 1}",
                    style: MyTextStyle.interMedium500.copyWith(
                      fontSize: 24,
                      color: MyColors.C_4047C1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.quizList[currentQuestionIndex].questionText,
                    style: MyTextStyle.interMedium500.copyWith(
                      fontSize: 20,
                      color: MyColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText1,
                    isSelected: selectedVariant == "A",
                    onTap: () {
                      setState(() {
                        selectedVariant = "A";
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText2,
                    isSelected: selectedVariant == "B",
                    onTap: () {
                      setState(() {
                        selectedVariant = "B";
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  VariantItem(
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText3,
                    isSelected: selectedVariant == "C",
                    onTap: () {
                      setState(() {
                        selectedVariant = "C";
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText4,
                    isSelected: selectedVariant == "D",
                    onTap: () {
                      setState(() {
                        selectedVariant = "D";
                      });
                    },
                  ),
                ],
              ),
            ),
            MyCustomButton(
                buttonText: "Next",
                onTap: () {
                  setState(() {
                    if (selectedVariant.isNotEmpty) {
                      if (currentQuestionIndex + 1 < widget.quizList.length) {
                        if (selectedVariant ==
                            widget.quizList[currentQuestionIndex].trueAnswer) {
                          trueAnswersCount++;
                        }
                        currentQuestionIndex++;
                        selectedVariant = "";
                      } else {
                        if (selectedVariant ==
                            widget.quizList[currentQuestionIndex].trueAnswer) {
                          trueAnswersCount++;
                        }
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return ResultScreen(
                                trueAnswersCount: trueAnswersCount,
                                totalQuestionsCount: widget.quizList.length,
                              );
                            },
                          ),
                        );
                      }
                    } else {
                      UtilityFunctions.getMyToast(
                          message: "Select Question Variant!");
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
