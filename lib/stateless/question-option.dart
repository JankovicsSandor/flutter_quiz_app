import 'package:flutter/material.dart';

class QuestionOptionWidget extends StatelessWidget {
  final String buttonLabel;
  final int buttonIndex;
  final Function(int) onButtonSelected;

  QuestionOptionWidget(
      {@required this.buttonLabel,
      @required this.buttonIndex,
      this.onButtonSelected});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 0.3,
        height: 40,
        child: RaisedButton(
          onPressed: () => onButtonSelected(buttonIndex),
          child: Text(buttonLabel),
        ));
  }
}
