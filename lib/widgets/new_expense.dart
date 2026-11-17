import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

@override
void dispose() {
  super.dispose();
  _titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
      throw UnimplementedError();
      // ignore: dead_code
      return Padding(
        padding:EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: "Title"),
              maxLength: 50,
              keyboardType: TextInputType.name,
            ),// AmountText Controller
            Row(children:[
              ElevatedButton(onPressed: () {
                print(_titleController.text);
              }, 
              child: Text("Save Expense")),
            ])
          ]
        ),
      );
  }
}