import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'hobbies class.dart';
import 'hobbies0.dart';
// import 'question_provider.dart';

class QuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final questionProvider = Provider.of<QuestionProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: ListView.builder(
        itemCount: questionProvider.questions.length,
        itemBuilder: (context, index) {
          final question = questionProvider.questions[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.questionText,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 10.0),
                if (question.type == QuestionType.text)
                  TextField(
                    onChanged: (value) {
                      questionProvider.updateAnswer(index, value);
                    },
                  ),
                if (question.type == QuestionType.radio)
                  ...question.options!.map((option) {
                    return RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: question.answer,
                      onChanged: (value) {
                        questionProvider.updateAnswer(index, value!);
                      },
                    );
                  }).toList(),
                if (question.type == QuestionType.checkbox)
                  ...question.options!.map((option) {
                    return CheckboxListTile(
                      title: Text(option),
                      value: question.answer?.contains(option) ?? false,
                      onChanged: (value) {
                        final currentAnswer = question.answer ?? '';
                        if (value == true) {
                          questionProvider.updateAnswer(
                              index, currentAnswer + option + ',');
                        } else {
                          questionProvider.updateAnswer(
                              index,
                              currentAnswer.replaceAll(option + ',', ''));
                        }
                      },
                    );
                  }).toList(),
                if (question.type == QuestionType.dropdown)
                  DropdownButton<String>(
                    value: question.answer,
                    items: question.options!
                        .map((option) =>
                        DropdownMenuItem(value: option, child: Text(option)))
                        .toList(),
                    onChanged: (value) {
                      questionProvider.updateAnswer(index, value!);
                    },
                  ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          // Handle saving the data
          // You can use questionProvider.questions to access the answers
        },
      ),
    );
  }
}
