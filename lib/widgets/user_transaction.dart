import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'T1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 'T2',
        title: 'Weekly Groceries',
        amount: 19.99,
        date: DateTime.now())
  ];
  void _addNewTransactions(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(), TransactionList(_userTransactions)],
    );
  }
}
