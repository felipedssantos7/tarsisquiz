import 'package:flutter/material.dart';
import 'package:tarsisquiz/components/components.dart';

class EndGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Container(
            child: Image.asset('assets/images/foto_em_grupo.png'),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Ao mestre, com carinho',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Text(
                  '''Tarsis Marinho, que na verdade é doutor, e não mestre, responsável pelo aumento em 200% na taxa de aprovados do 1º ano do curso de Informática, não é apenas um professor excepcional, mas também uma pessoa incrível e um amigo maravilhoso. Sua didática admirável combinada com sua autoridade que nos faz tremer na base fazem com que seus alunos o olhem com muito respeito – respeito esse que ele nos ensina a ter com todos os indivíduos, assim como a humildade.''',
                  style: TextStyle(fontSize: 15.0),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
