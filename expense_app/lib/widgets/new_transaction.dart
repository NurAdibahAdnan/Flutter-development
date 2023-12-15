import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  late final Function addTrx;

  NewTransaction(this.addTrx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  //Define the variable for handling changes to a TextField....
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  //cater an initial null , this will have value later
  late DateTime _selectedDate = DateTime.now();

  // Add method/function submitData()
 void submitData() {
  final enteredTitle = titleController.text;
  final enteredAmount = double.parse(amountController.text);

  //to verify the data entry
  if (enteredTitle.isEmpty || enteredAmount <= 0) {
    print('Debug2 - Passing 2...');
    return;
  }
   widget.addTrx( //Adding widget for addTrx..
    enteredTitle, 
    enteredAmount,
    _selectedDate,
    );

    Navigator.of(context).pop();
 }

 void _presentDatePicker() {
  showDatePicker(
    context: context, 
    initialDate: DateTime.now(), 
    firstDate: DateTime(2021), 
    lastDate: DateTime.now())
    .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
 }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom + 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              //onChanged: (val) => { titleInput = val},   // Note: 1st approach
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,// adding the keyboard type to capture input as number only
              onSubmitted: (_) => submitData(), 
              //onChanged: (val) => { amountInput = val},
            ),
            Container(
              height: 70,
              child:  Row(
                children: <Widget> [
                  Expanded(
                    child: Text(
                      // ignore: unnecessary_null_comparison
                      _selectedDate == null
                      ? 'No Date Chosen'
                      : 'Picked Date : ${DateFormat.yMd().format(_selectedDate)}',
                    ),
                  ),
                  TextButton(
                  onPressed: _presentDatePicker, 
                  child: Text(
                    'Choose Date',
                    style:  TextStyle(fontWeight:  FontWeight.bold),
                  ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //backgroundColor: const Color.fromARGB(255, 158, 158, 158),
                //foregroundColor: Color.fromARGB(255, 4, 246, 222),
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                print(titleController);
                print(amountController);
                (_) => submitData(); //adding funtion to Button
                /*addTrx(
                  titleController.text,
                  double.parse(amountController.text),
                );*/
              },
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    ),
    );
  }
}


