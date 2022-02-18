import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _trans;

  TransactionList(this._trans, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _trans.map((tx) {
        return Card(
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(border: Border.all(width: 2)),
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "\$${tx.amount}",
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    DateFormat().format(tx.date),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
