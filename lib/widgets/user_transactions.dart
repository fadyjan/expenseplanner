import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './list_transaction.dart';
import './new_transactions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(_addNewTransactions),
        TransactionList(_userTransactions)
      ],
    );
  }
}
