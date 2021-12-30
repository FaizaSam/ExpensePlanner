import 'package:expense_planner/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  //TransactionList({Key? key}) : super(key: key);
  final List<Transaction> transactions;

  TransactionList(this.transactions);

//class _TransactionListState extends State<TransactionList> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((txn) {
      return Card(
        child: Row(
          children: <Widget>[
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '\$${txn.amount}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  txn.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900]),
                ),
                Text(DateFormat('yyyy-MM-dd').format(txn.date))
              ],
            ),
          ],
        ),
      );
    }).toList());
  }
}
