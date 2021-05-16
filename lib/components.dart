import 'package:flutter/material.dart';

buildAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(80.0),
    child: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff52ea5e),
          border: Border(
            bottom: BorderSide(
              color: Color(0xff008c3c),
              width: 5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        height: 80.0,
        child: Image.asset('assets/images/appbar.png'),
      ),
    ),
  );
}