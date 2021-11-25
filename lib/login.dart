import 'package:flutter/material.dart';
import 'lista.dart';
class LoginScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Image.asset("assets/telefone.png" ,height: 50,width: 50),
            Text(
              "PHONE CLOUD",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder()
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder()
              ),
              obscureText: true,
            ),
            ElevatedButton(
              child: Text('ENTRAR'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10
                ),
                textStyle: TextStyle(fontSize: 14),
              ),
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/lista');
              },
            ),
          ],
        ),
      );
    }
}
