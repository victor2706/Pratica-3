import 'package:flutter/material.dart';
import 'login.dart';
class ListaScreen extends StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        actions: [ GestureDetector(
            child: Icon(Icons.more_vert),
          onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
              }));
          },
        ),
        ],
        title: Text("Contatos"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (ctxt, index){
          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Icon ${index}"),
            subtitle: Text("9684-2053"),
            trailing: Icon(Icons.delete),
          );
        },
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        Navigator.pushNamed(context, '/cadastro');
      },
      ),
    );
  }
}