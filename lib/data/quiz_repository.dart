import 'package:my_quiz_app/model/quiz_data.dart';

class QuizRepository {
  static List<QuizData> getEnglishQuizzes() {
    List<QuizData> tests = [];

    tests.add(QuizData(
      trueAnswer: "A",
      questionText: "Question text : ",
      variantText1: "A. Variant 1",
      variantText2: "B. Variant 2",
      variantText3: "C. Variant 3",
      variantText4: "D. Variant 4",
    ));
    tests.add(QuizData(
      trueAnswer: "A",
      questionText: "Question text : ",
      variantText1: "A. Variant 1",
      variantText2: "B. Variant 2",
      variantText3: "C. Variant 3",
      variantText4: "D. Variant 4",
    ));
    tests.add(QuizData(
      trueAnswer: "A",
      questionText: "Question text : ",
      variantText1: "A. Variant 1",
      variantText2: "B. Variant 2",
      variantText3: "C. Variant 3",
      variantText4: "D. Variant 4",
    ));
    tests.add(QuizData(
      trueAnswer: "A",
      questionText: "Question text : ",
      variantText1: "A. Variant 1",
      variantText2: "B. Variant 2",
      variantText3: "C. Variant 3",
      variantText4: "D. Variant 4",
    ));
    tests.add(QuizData(
      trueAnswer: "A",
      questionText: "Question text : ",
      variantText1: "A. Variant 1",
      variantText2: "B. Variant 2",
      variantText3: "C. Variant 3",
      variantText4: "D. Variant 4",
    ));

    return tests;
  }

  static List<QuizData> getMathQuizzes() {
    List<QuizData> tests = [];
    for (int i = 0; i < 12; i++) {
      tests.add(
        QuizData(
          trueAnswer: "A",
          questionText: "Question text : $i",
          variantText1: "A. Variant 1",
          variantText2: "B. Variant 2",
          variantText3: "C. Variant 3",
          variantText4: "D. Variant 4",
        ),
      );
    }

    return tests;
  }
}
