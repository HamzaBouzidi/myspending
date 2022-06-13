import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/Transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 99.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 17.12, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransaction.map((trx) {
      return Card(
        child: Row(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.5)),
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(10),
              child: Text(
                '\$' + trx.amount.toString(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            margin: EdgeInsets.all(12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(trx.title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                DateFormat.yMMMd().format(trx.date),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ]),
          )
        ]),
      );
    }).toList());
  }
}
