//by Hygor_Costa
// Flutter

import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransferForm(),
      ),
    );
  }
}

class TransferForm extends StatelessWidget {
  final TextEditingController _controllerTypeAccount = TextEditingController();
  final TextEditingController _controllerTypeValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Creating a Transfer'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerTypeAccount,
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                    labelText: 'Account Number', hintText: '0000'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controllerTypeValue,
                style: TextStyle(fontSize: 24.0),
                decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on),
                    labelText: 'Value',
                    hintText: '0.00'),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Confirm'),
              onPressed: () {
                debugPrint('Clicked');
                // final int accountnumber =
                //     int.tryParse(_controllerTypeAccount.text);
                // final double value = 
                //     double.tryParse(_controllerTypeValue.text);

// Checkers
                // if (accountnumber != null && value != null) {
                //   final transferCreated = Transfer(value, accountnumber);
                //   debugPrint('$transferCreated');
                // }
             },
            ),
          ],
        ));
  }
}
class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfers"),
      ),
      body: Column(
        children: <Widget>[
          TransferItem(Transfer(100.0, 10)),
          TransferItem(Transfer(250.0, 20)),
          TransferItem(Transfer(345.0, 30)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color.fromARGB(232, 0, 186, 254),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transfer.value.toString()),
      subtitle: Text(_transfer.accountNumber.toString()),
    ));
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);

  @override
    String toString() {
        return 'Transfer{value: $value, accountNumber: $accountNumber}';
    }
}