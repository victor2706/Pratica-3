import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'cadastro.dart';
import 'login.dart';
import 'lista.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aluno Online",
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        '/': (context) => LoginScreen(),
        '/lista': (context) => ListaScreen(),
        '/cadastro': (context) => CadastroScreen(),
    },
    );
  }
}