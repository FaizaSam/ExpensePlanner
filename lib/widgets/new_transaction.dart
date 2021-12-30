import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //const NewTransaction({Key? key}) : super(key: key);
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                // onChanged: (String value) {
                // titleInput = value;
                // }
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                /* onChanged: (String value) {
                          amountInput = value;
                        }*/
                controller: amountController,
              ),
              ElevatedButton(
                  onPressed: () {
                    addTx(titleController.text,
                        double.parse(amountController.text));
                  },
                  child: const Text('Add Transaction',
                      style: TextStyle(color: Colors.purple))),
            ],
          ),
        ));
  }
}
