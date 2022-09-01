import 'package:super_quiz/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question('Alguns gatos são alérgicos a humanos', true),
    Question(
        'É possível fazer com que uma vaca suba escadas, mas não descê-las.',
        false),
    Question(
        'Aproximadamente um quarto dos ossos humanos estão nos pés.', true),
    Question('O sangue de uma lesma é verde.', true),
    Question('O nome de solteira da mãe de Buzz Aldrin era \"Moon\".', true),
    Question('É ilegal urinar no oceano, em Portugal.', true),
    Question(
        'Nenhum pedaço quadrado de papel pode ser dobrado mais do que 7 vezes.',
        false),
    Question(
        'Em Londres, se você morrer no Parlamento, você tem direito a um funeral de estado, porque o prédio é considerado um local sagrado.',
        true),
    Question(
        'O som mais forte produzido por qualquer animal é de 188dB. Esse animal é o elefante africano.',
        false),
    Question(
        'A área total dos dois pulmões de um humano é de aproximadamente 70 metros quadrados.',
        true),
    Question('Google foi chamado, originalmente de \"Backrub\".', true),
    Question(
        'O chocolate afeta o coração e o sistema nervoso de um cão; algumas gramas são suficientes para matar um cão pequeno.',
        true),
    Question(
        'Na Virginia do Oeste, EUA, se você atropelar um animal com um carro, por acidente, você pode levá-lo para casa e comê-lo.',
        true),
  ];

  int _currentQuestion = 0;

  void nextQuestion() {
    if (_currentQuestion < _questionBank.length - 1) {
      _currentQuestion++;
    }
  }

  String getQuestionText() {
    return _questionBank[_currentQuestion].text;
  }

  bool getQuestionAnswer() {
    return _questionBank[_currentQuestion].answer;
  }
}