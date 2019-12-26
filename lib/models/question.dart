import 'package:flutter_party_invite/models/option.dart';

class Question {
  String question;
  List<Option> options;
  int correctOptionIndex;

  Question(question, options, correctOptionIndex) {
    this.question = question;
    this.options = options;
    this.correctOptionIndex = correctOptionIndex;
  }
}
