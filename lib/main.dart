import 'package:expenseplanner/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transcations = [
    Transaction(id: "t1", tittle: "newshoes", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t2", tittle: "newshoes3", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t3", tittle: "newshoes2", date: DateTime.now(), amount: 69),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                child: const Text("This is FirstCard"),
                color: Colors.blue,
              ),
            ),
            Column(
              children: transcations.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          decoration:
                              BoxDecoration(border: Border.all(width: 2)),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            tx.amount.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.tittle,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
