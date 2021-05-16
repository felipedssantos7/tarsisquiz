import 'package:flutter/material.dart';
import 'package:tarsisquiz/components.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  Function _nextQuestion = null;
  int index = 0;

  // Questions.
  List<Map<String, String>> questions = [
    {
      'enunciado' : '1) Qual presente de despedida você vai dar para a 925?',
      'imagem' : 'assets/images/presente.png',
      'A' : '24 computadores.',
      'B' : 'Nota 10 pra geral.',
      'C' : 'Vai bancar a formatura.',
      'D' : 'Um emprego pra cada um.',
      'E' : 'Uma viagem pra Disney.',
      'correta' : 'D'
    },
    {
      'enunciado' : '2) Qual o seu aluno favorito?',
      'imagem' : 'assets/images/aluno_favorito.png',
      'A' : 'Rony.',
      'B' : 'Isabel.',
      'C' : 'Jesus.',
      'D' : 'Vitor.',
      'E' : 'Nenhum, odeio todos.',
      'correta' : 'E'
    },
    {
      'enunciado' : '3) Qual a sua turma favorita?',
      'imagem' : 'assets/images/turma_favorita.png',
      'A' : '924.',
      'B' : 'Nove dois quatro.',
      'C' : 'Novecentos e vinte e quatro.',
      'D' : 'novedois4',
      'E' : '925.',
      'correta' : 'E'
    },
    {
      'enunciado' : '4) Você quer nosso padrinho?',
      'imagem' : 'assets/images/tarsis_padrinho.png',
      'A' : 'Nunca no Brasil!',
      'B' : 'Sim.',
      'C' : 'Yes.',
      'D' : 'Com cerveja!',
      'E' : 'Se vocês se formarem...',
      'correta' : 'E'
    }
  ];

  // Colors.
  int lightGreen = 0xff52ea5e;
  int lightRed = 0xffff9999;
  Color _buttonNextPageColor = Colors.grey;
  Map<String, Color> _alternativeColor;
  Map<String, Color> _letterAlternativeColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              questions[index]['enunciado'],
              style: TextStyle(fontSize: 19.0),
            ),
          ),
          Container(
            height: 150.0,
            child: Image.asset(questions[index]['imagem']),
          ),
          _space(),
          Container(
            child: Column(
              children: [
                _alternative('A', questions[index]['A']),
                _alternative('B', questions[index]['B']),
                _alternative('C', questions[index]['C']),
                _alternative('D', questions[index]['D']),
                _alternative('E', questions[index]['E']),
              ],
            ),
          ),
          _buttonNextPage(),
        ],
      ),
    );
  }

  _buildBorderSide(int color) {
    return BorderSide(
      color: Color(color),
      width: 2.5,
      style: BorderStyle.solid,
    );
  }

  _space(){
    return Container(height: 10.0);
  }

  _alternative(String letter, String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Container(
        color: _alternativeColor['${letter}'],
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){
              setState(() {

                // Seleciona questão e verifica se acertou ou errou.
                _alternativeColor['${letter}'] = Colors.grey[400];
                if(letter == questions[index]['correta']){
                  _letterAlternativeColor['${letter}'] = Color(lightGreen);
                } else {
                  _letterAlternativeColor['${letter}'] = Color(lightRed);
                }
                // Botão.
                _buttonNextPageColor = Colors.green;
                _nextQuestion = (){
                  setState(() {
                    if(index < (questions.length-1)){
                      index = index + 1;
                      _reset();
                    }
                  });
                };
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: _buildBorderSide(Colors.grey[400].hashCode),
                  right: _buildBorderSide(Colors.grey[400].hashCode),
                  top: _buildBorderSide(Colors.grey[200].hashCode),
                  left: _buildBorderSide(Colors.grey[200].hashCode),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: CircleAvatar(
                          child: Text('${letter}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          backgroundColor: _letterAlternativeColor['${letter}'],
                          foregroundColor: Colors.black,
                        ),
                      ),
                      Container(width: 10.0),
                      Container(
                        child: Text('${text}', style: TextStyle(fontSize: 16.0),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buttonNextPage(){
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 20.0),
      height: 60.0,
      child: TextButton(
        child: Text('PRÓXIMA', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),),
        onPressed: _nextQuestion,
        style: TextButton.styleFrom(backgroundColor: _buttonNextPageColor),
      ),
    );
  }

  void _reset() {

    // Reseta cores das alternativas.
    _alternativeColor = {
      'A' : Colors.grey[300],
      'B' : Colors.grey[300],
      'C' : Colors.grey[300],
      'D' : Colors.grey[300],
      'E' : Colors.grey[300]
    };

    // Reseta cores das letras das alternativas.
    _letterAlternativeColor = {
      'A' : Colors.grey[300],
      'B' : Colors.grey[300],
      'C' : Colors.grey[300],
      'D' : Colors.grey[300],
      'E' : Colors.grey[300]
    };

    // Reseta botão.
    _buttonNextPageColor = Colors.grey;
    _nextQuestion = null;
  }

}
