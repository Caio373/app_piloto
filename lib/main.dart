// 1 - CRIAR UMA VARIAVEL DO TIPO LIST
// COM 5 ITENS DE PREFERENCIA String
// USAR O LISTVIEW.BUILDER PARA MOSTRAR
// OS VALORES DO ARRAY NA TELA

// 2 - COLOCAR DOIS ICONES UM DO LADO DO OUTRO
// Exemplo de Icone: Icon(Icons.person)
// e embaixo um texto qualquer

// 3 - Quero uma variavel do tipo int
// quero que voces mostrem o valor dessa variavel na TELA
// e tenha um botao embaixo
// quero que criem um metodo que toda vezes que eu clicar no botao
// a variavel tenha uma incremento de 1

import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MeuApp> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Test flutter')),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.person, size: 50),
                    Text("Usuário 1"),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Icon(Icons.person, size: 50),
                    Text("Usuário 2"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Valor do contador: $counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
