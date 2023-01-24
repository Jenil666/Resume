import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pra/Resume.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Resume(),
      },
    ),
  );
}