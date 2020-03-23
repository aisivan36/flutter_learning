import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resutlText = 'You did it';
    if (resultScore <= 8) {
      resutlText = 'Great makes it possible to take any question again';
    } else if (resultScore <= 12) {
      resutlText = "Good job";
    } else if (resultScore <= 16) {
      resutlText = 'You\'re very excited';
    } else {
      resutlText = 'It\'s okay we\'ll try again';
    }
    return resutlText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w600,
                color: Colors.purpleAccent),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
