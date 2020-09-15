class Question {
  String questionText;
  List<String> questionAnswer;

  Question(String q, List<String> ans ) {
    questionText = q;
    questionAnswer = ans;
  }
}

class QuizBrain {
  int result = 0 ;
  int _questionNumber = 0;

  List<Question> questionBank = [
    Question('Between the ages of 16 and 40, about how long was your average menstrual cycle '
        '(time from first day of one period to the first day of the next period)?', ['<25 d', '25–34 d','35–60 d','More than 60 d', 'Totally variable']),
    Question('During your menstruating years (not including during pregnancy), did you have a tendency to grow dark,'
        ' coarse hair on your (select ALL that apply)', ['upper lip','chin','breasts','chest','back','belly','upper arms','upper thighs']),
    Question('Were you ever obese or overweight between the ages of 16 and 40? ', ['Yes','No']),
    Question('Between the ages of 16 and 40, have you ever noticed a milky discharge from your nipples (not including during pregnancy or recent childbirth)?', ['Yes','No']),
  ];
  int get questionNumber
  {
    return _questionNumber;
  }

  void nextQuestion() {
    if (_questionNumber < questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[_questionNumber].questionText;
  }
  void scoreCalculator(List<int> score)
  {
    if(questionNumber == 0)
      {
        if(score.contains(2) || score.contains(3) || score.contains(4))
          result++;
      }
    else if(questionNumber == 1)
      {
        if(score.length >=3)
          result++;
      }
    else
      {
        if(questionNumber == 2) {
          if (score.contains(0))
            result++;
        }
        else
          {
            if(score.contains(0))
              result++;
            else
              result--;
          }
      }
  }

  List<String> getAnswer() {
    return questionBank[_questionNumber].questionAnswer;
  }


  bool isFinished() {
    if (_questionNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
    result = 0;
  }
}
