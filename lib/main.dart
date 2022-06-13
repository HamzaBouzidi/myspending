import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../widgets/TransactionsList.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Container(
                child: Text('Chart!'),
                width: 100,
                color: Colors.blueAccent[100],
              ),
              elevation: 7,
            ),
            NewTransaction(),
            TransactionList()
          ],
        ));
  }
}
