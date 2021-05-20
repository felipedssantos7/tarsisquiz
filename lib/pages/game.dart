import 'package:flutter/material.dart';
import 'package:tarsisquiz/components/components.dart';
import 'package:tarsisquiz/datas/questions.dart';
import 'package:tarsisquiz/pages/endgame.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  Function _nextQuestion = null;
  int index = 0;

  // Questões.
  List<Map<String, String>> _questions;
  TextEditingController _alunoFavorito = TextEditingController(text: 'Todos.');

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
    _questions = Questions().questions;
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
              "${index+1}) ${_questions[index]['enunciado']}",
              style: TextStyle(fontSize: 19.0),
            ),
          ),
          Container(
            height: 150.0,
            child: Image.asset(_questions[index]['imagem']),
          ),
          _space(),
          Container(
            child: Column(
              children: [
                _alternative('A', _questions[index]['A']),
                _alternative('B', _questions[index]['B']),
                _alternative('C', _questions[index]['C']),
                _alternative('D', _questions[index]['D']),
                (index+1) == 2 ? _alternative('E', _alunoFavorito.text) : _alternative('E', _questions[index]['E']),
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
                if(letter == _questions[index]['correta']){
                  // Color da letra da alternativa.
                  _letterAlternativeColor['${letter}'] = Color(lightGreen);
                  // Muda texto da alternativa.
                  if(index+1 == 2){
                    _alunoFavorito.text = 'Nenhum, odeio todos!';
                  }
                  // Botão.
                  _buttonNextPageColor = Colors.green;
                  _nextQuestion = (){
                    setState(() {
                      if(index < (_questions.length-1)){
                        index = index + 1;
                        _reset();
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EndGame()));
                      }
                    });
                  };
                } else {
                  _letterAlternativeColor['${letter}'] = Color(lightRed);
                }
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
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${text}',
                                style: TextStyle(fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
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
