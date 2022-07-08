import 'package:flutter/material.dart';

import 'models/transaction.dart';

main() => runApp(expensesApp());

class expensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Sapato',
      value: 340.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Corte de cabelo',
      value: 31.50,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Grafico'),
                elevation: 5,
              ),
            ),
            Column(
                children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(tr.value.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tr.title),
                        Text(tr.date.toString()),
                      ],
                    ),
                  ],
                ),
              );
            }).toList())
          ],
        ));
  }
}
