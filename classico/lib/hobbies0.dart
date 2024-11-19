import 'package:flutter/foundation.dart';

import 'hobbies class.dart';
// import 'question_model.dart';

mixin QuestionProvider {
  List<Question> _questions = [
    Question(
      questionText: "What is your favorite color?",
      options: ["Red", "Green", "Blue", "Yellow"],
      type: QuestionType.radio,
    ),
    Question(
      questionText: "What are your hobbies?",
      options: ["Reading", "Traveling", "Gaming", "Cooking"],
      type: QuestionType.checkbox,
    ),
    Question(
      questionText: "Describe yourself",
      type: QuestionType.text,
    ),
    Question(
      questionText: "What is your education level?",
      options: ["High School", "Bachelor's", "Master's", "PhD"],
      type: QuestionType.dropdown,
    ),
  ];

  List<Question> get questions => _questions;

  void updateAnswer(int index, String answer) {
    _questions[index] = Question(
      questionText: _questions[index].questionText,
      options: _questions[index].options,
      type: _questions[index].type,
      answer: answer,
    );
    // notifyListeners();
  }
}
