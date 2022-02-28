// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expenseplanner/widgets/list_transaction.dart';
import 'package:expenseplanner/widgets/new_transactions.dart';
import 'package:flutter/material.dart';
import './widgets/list_transaction.dart';
import 'models/transaction.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "t1", tittle: "newshoes", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t2", tittle: "newshoes3", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t3", tittle: "newshoes2", date: DateTime.now(), amount: 69),
    Transaction(id: "t1", tittle: "newshoes", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t2", tittle: "newshoes3", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t3", tittle: "newshoes2", date: DateTime.now(), amount: 69),
    Transaction(id: "t1", tittle: "newshoes", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t2", tittle: "newshoes3", date: DateTime.now(), amount: 69),
    Transaction(
        id: "t3", tittle: "newshoes2", date: DateTime.now(), amount: 69),
  ];

  void _addNewTransactions(
    String title,
    double amount,
  ) {
    final newTax = Transaction(
        id: DateTime.now().toString(),
        tittle: title,
        date: DateTime.now(),
        amount: amount);

    setState(() {
      _userTransactions.add(newTax);
    });
  }

  void _startAddNewTrasaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewTransactions(_addNewTransactions);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                child: const Text("This is FirstCard"),
                color: Colors.blue,
              ),
            ),
            TransactionList(_userTransactions)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTrasaction(context),
      ),
    );
  }
}
