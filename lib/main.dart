import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //MyApp({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Expense Planner'),
          ),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 5,
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: const Text('CHART'),
                ),
              ),
              UserTransaction()
            ]),
      ),
    );
  }
}
