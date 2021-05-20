import 'package:flutter/material.dart';
import 'package:tarsisquiz/components/components.dart';

class EndGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: ListView(
          children: [
            Container(
              color: Colors.red,
              child: Image(
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/foto_em_grupo.png'),
              ),
            ),
            text(),
          ],
        ),
      ),
    );
  }
}

text(){
  return Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text(
          'Ao mestre, com carinho',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text(
          '''Dr. Tarsis Marinho de Souza, responsável pelo aumento em 200% da taxa de aprovados do 1º ano do curso de Informática de 2017, não é apenas um professor excepcional, mas também uma pessoa incrível e um amigo extraordinário. Sua didática admirável combinada com sua autoridade que nos faz tremer na base arrancam de seus pupilos nada menos que respeito – sentimento esse que ele nos ensina a ter com todo e qualquer indivíduo, assim como a humildade, que ele prega enquanto pilota seu carro importado.''',
          style: TextStyle(fontSize: 15.0),
          textAlign: TextAlign.justify,
        ),
      ],
    ),
  );
}