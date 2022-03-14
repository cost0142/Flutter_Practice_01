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
            Card(
                child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("100.0"),
              subtitle: Text("1000"),
            )),
            Card(
                child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("200.0"),
              subtitle: Text("1000"),
            )),
          ],
        );
  }
}

