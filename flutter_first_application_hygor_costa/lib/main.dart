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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Creating a Transfer'),),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            style: TextStyle(
              fontSize: 24.0
            ),
            decoration: InputDecoration(
              labelText: 'Account Number',
              hintText: '0000'
            ),
            keyboardType: TextInputType.number,
          ),
          // TextField(), // ***************************************
          ),
          ElevatedButton(
  onPressed: (){},
  child: Text('Button'),
  style: ElevatedButton.styleFrom(
  shadowColor: Colors.green,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
      ),
   ),
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
      subtitle: Text(_transfer.numberAccount.toString()),
    ));
  }
}

class Transfer {
  final double value;
  final int numberAccount;

  Transfer(this.value, this.numberAccount);
}
