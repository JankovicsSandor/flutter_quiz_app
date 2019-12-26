import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_party_invite/models/option.dart';
import 'package:flutter_party_invite/models/question.dart';
import 'package:flutter_party_invite/stateful/question-page.dart';
import 'package:flutter_party_invite/stateless/point.dart';
import 'package:flutter_party_invite/stateless/question-option.dart';

class QuestionPageState extends State<QuestionPage> {
  int maxRound = 1;
  int _correctCount = 0;
  int _turn = 0;

  List<Question> questions = [
    new Question(
        "Potato was introduced to Europe by",
        [
          new Option("Dutch"),
          new Option("Portuguese"),
          new Option("Germans"),
          new Option("Spanish")
        ],
        3)
  ];
  String snackbarText;

  String getQuestion() {
    return questions[_turn].question;
  }

  String getAnswer(int index) {
    return questions[_turn].options[index].label;
  }

  void answerQuestion(int answearIndex) {
    if (questions[_turn].correctOptionIndex == answearIndex) {
      _correctCount++;
      snackbarText = "Correct";
    } else {
      snackbarText = "Not correct. Correct: " +
          questions[_turn].options[questions[_turn].correctOptionIndex].label;
    }
    updateStatus();
  }

  void _goNextRound() {
    if (_turn < maxRound) {
      _turn++;
      updateStatus();
    }
  }

  void updateStatus() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.

      child: Column(
        children: <Widget>[
          PointWidget(_turn, _correctCount, maxRound),
          Text(
            getQuestion(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  QuestionOptionWidget(
                      buttonLabel: getAnswer(0),
                      buttonIndex: 0,
                      onButtonSelected: (index) {
                        answerQuestion(index);
                        final snackBar = SnackBar(
                          content: Text(snackbarText),
                          action: SnackBarAction(
                            label: 'Ok',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );

                        // Find the Scaffold in the widget tree and use
                        // it to show a SnackBar.
                        Scaffold.of(context).showSnackBar(snackBar);
                      }),
                  QuestionOptionWidget(
                      buttonLabel: getAnswer(1),
                      buttonIndex: 1,
                      onButtonSelected: (index) {
                        answerQuestion(index);
                        final snackBar = SnackBar(
                          content: Text(snackbarText),
                          action: SnackBarAction(
                            label: 'Ok',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );

                        // Find the Scaffold in the widget tree and use
                        // it to show a SnackBar.
                        Scaffold.of(context).showSnackBar(snackBar);
                      }),
                ],
              ),
              Column(children: <Widget>[
                QuestionOptionWidget(
                    buttonLabel: getAnswer(2),
                    buttonIndex: 2,
                    onButtonSelected: (index) {
                      answerQuestion(index);
                      final snackBar = SnackBar(
                        content: Text(snackbarText),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      // Find the Scaffold in the widget tree and use
                      // it to show a SnackBar.
                      Scaffold.of(context).showSnackBar(snackBar);
                    }),
                QuestionOptionWidget(
                    buttonLabel: getAnswer(3),
                    buttonIndex: 3,
                    onButtonSelected: (index) {
                      answerQuestion(index);
                      final snackBar = SnackBar(
                        content: Text(snackbarText),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      // Find the Scaffold in the widget tree and use
                      // it to show a SnackBar.
                      Scaffold.of(context).showSnackBar(snackBar);
                    })
              ])
            ],
          ),
        ],
      ),
    );
  }
}
