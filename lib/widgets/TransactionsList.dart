import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/Transaction.dart';

class TransactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: _userTransactions.map((trx) {
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
                  fontSize: 14.5,
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
