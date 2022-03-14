import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: TransferList(),
        appBar: AppBar(
          title: Text("Transfers"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Color.fromARGB(232, 0, 186, 254),
          child: const Icon(Icons.add),
        ),
      ),
    ));

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransferItem(Transfer(100.0, 10)),
        TransferItem(Transfer(250.0, 20)),
        TransferItem(Transfer(345.0, 30)),
      ],
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
