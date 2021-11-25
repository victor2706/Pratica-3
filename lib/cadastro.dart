import 'package:flutter/material.dart';
class CadastroScreen extends StatefulWidget {
  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}
class _CadastroScreenState extends State<CadastroScreen> {
  String _Texto = 'Salvar';
  String _Nome = '';
  String _Telefone = '';
  void pressionaSalvar(BuildContext context) {
    print("${_Nome} : ${_Telefone}");
    Navigator.pop(context);
  }
  void mantemPressionado() {
    setState(() => _Texto = 'você pressinou mais que 500ms');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Novo Contato"),
      ),
      body: Column(
        children: [
          TextField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(labelText: "Nome"),
            keyboardType: TextInputType.name,
            onChanged: (text) => setState(() => _Nome = text),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Telefone"),
            keyboardType: TextInputType.phone,
            onChanged: (text) => setState(() => _Telefone = text),
          ),
          TextButton(child: Text(_Texto),
              onPressed: () {pressionaSalvar(context); } ,
              onLongPress: mantemPressionado,
          ),
        ],
      ),
    );
  }
}