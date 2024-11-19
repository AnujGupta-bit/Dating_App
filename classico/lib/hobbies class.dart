class Question {
  final String questionText;
  final String? answer;
  final List<String>? options;
  final QuestionType type;

  Question({
    required this.questionText,
    this.answer,
    this.options,
    required this.type,
  });
}

enum QuestionType {
  text,
  radio,
  checkbox,
  dropdown,
}
