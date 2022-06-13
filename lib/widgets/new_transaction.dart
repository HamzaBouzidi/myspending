import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    return Card(
      child: Container(
          margin: EdgeInsets.all(12),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: '\$0000'),
              controller: amountController,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Add'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              ),
            )
          ])),
    );
  }
}
