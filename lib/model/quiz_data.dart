class QuizData {
  QuizData({
    required this.trueAnswer,
    required this.questionText,
    required this.variantText1,
    required this.variantText2,
    required this.variantText3,
    required this.variantText4,
  });

  final String questionText;
  final String variantText1;
  final String variantText2;
  final String variantText3;
  final String variantText4;
  final String trueAnswer; //A, B, C, D
}
