import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //const NewTransaction({Key? key}) : super(key: key);

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
                    print(titleController.text);
                    print(amountController.text);
                  },
                  child: const Text('Add Transaction',
                      style: TextStyle(color: Colors.purple))),
            ],
          ),
        ));
  }
}
