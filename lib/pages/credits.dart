import 'package:flutter/material.dart';
import 'package:tarsisquiz/components/components.dart';

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5.0),
            child: Text(
              'Créditos',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          _row('Patroa: ', 'Ana Beatriz'),
          _row('Editor: ', 'Felipe Santos'),
          _row('Degsiner: ', 'Felipe Santos'),
          _row('Roterista: ', 'Felipe Santos'),
          _row('Programador: ', 'Felipe Santos'),
        ],
      ),
    );
  }

  _row(String title, String content){
    return Container(
      margin: EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
          Text(content, style: TextStyle(fontSize: 15.0),),
        ],
      ),
    );
  }

}
