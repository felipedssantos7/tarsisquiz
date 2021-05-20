import 'package:flutter/material.dart';

class Questions {

  // Lista de mapas de questões.
  List<Map<String, String>> questions = [
    {
      'enunciado' : 'Qual presente de despedida você vai dar para a 925?',
      'imagem' : 'assets/images/presente.png',
      'A' : '24 computadores da NASA.',
      'B' : 'Um emprego no Google para cada um.',
      'C' : 'Uma viagem técnica para o Vale do Silício.',
      'D' : 'Uma lição de moral para eles tomarem vergonha na cara.',
      'E' : 'Uma caixa cheia de nada.',
      'correta' : 'D'
    },
    {
      'enunciado' : 'Qual o seu aluno favorito?',
      'imagem' : 'assets/images/aluno_favorito.png',
      'A' : 'Isabel.',
      'B' : 'Jesus.',
      'C' : 'Vitor.',
      'D' : 'Rony.',
      'E' : 'Todos. → Nenhum, odeio todos.',
      'correta' : 'E'
    },
    {
      'enunciado' : 'Qual a sua turma favorita?',
      'imagem' : 'assets/images/turma_favorita.png',
      'A' : '925.',
      'B' : 'Nove dois quatro.',
      'C' : 'Novecentos e vinte e quatro.',
      'D' : 'novedois4.',
      'E' : '924.',
      'correta' : 'A'
    },
    {
      'enunciado' : 'Qual a sua disciplina favorita?',
      'imagem' : 'assets/images/lagrimas.jpg',
      'A' : 'Introdução à programção.',
      'B' : 'Banco de dados.',
      'C' : 'Programação móvel.',
      'D' : 'Programação web.',
      'E' : 'Infernizar meus alunos.',
      'correta' : 'E'
    },
    {
      'enunciado' : 'De qual linguagem a 925 mais gosta?',
      'imagem' : 'assets/images/turma_favorita.png',
      'A' : 'C.',
      'B' : 'Java.',
      'C' : 'SQL.',
      'D' : 'Dart.',
      'E' : 'Língua Portuguesa.',
      'correta' : 'B'
    },
    {
      'enunciado' : 'Quem é o líder da 925?',
      'imagem' : 'assets/images/turma_favorita.png',
      'A' : 'Felipe, o monitor de PWEB.',
      'B' : 'Jesus, o maloqueiro.',
      'C' : 'Smile, o físico turista.',
      'D' : 'Isabel, a reclamona.',
      'E' : 'Piu, a diplomata.',
      'correta' : 'C'
    },
    {
      'enunciado' : 'Como você vai resolver o problema do desemprego e da miséria que atingirá seus ex-alunos?',
      'imagem' : 'assets/images/turma_favorita.png',
      'A' : 'Ema ema ema cada um com seus problemas.',
      'B' : 'Vou criar uma empresa e contratá-los.',
      'C' : 'Vou dividir meu salário de U\$ 30.000,00 com eles.',
      'D' : 'Vou indicar os nomes deles para vagas de emprego.',
      'E' : 'Nenhuma das alternativas anteriores.',
      'correta' : 'A'
    },
    {
      'enunciado' : 'Você quer ser nosso padrinho?',
      'imagem' : 'assets/images/tarsis_padrinho.png',
      'A' : 'Nunca no Brasil!',
      'B' : 'Com cerveja!',
      'C' : 'Sim || Yes',
      'D' : 'Só aceito se for como homenageado.',
      'E' :
      '''
if(vocesSeFormarem == true){
  printf("Sim");
}
''',
      'correta' : 'D'
    },
  ];
}