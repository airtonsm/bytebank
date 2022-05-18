import 'package:flutter/material.dart';

void main() => runApp(
  BytebankApp()
);

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}


class FormularioTransferencia extends StatelessWidget{
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferência'),),
        body:  Column(
          children: [
             const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style : TextStyle(
              fontSize: 24.0
        ),
                decoration: InputDecoration(
                  labelText: 'Numero da conta',
                  hintText: '0000'
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style : TextStyle(
              fontSize: 24.0
        ),
                decoration: InputDecoration(
                  icon : Icon(Icons.monetization_on),
                  labelText: 'Valor',
                  hintText: '0.00'
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            ElevatedButton(
                style: style,
                onPressed: () {},
                child: const Text('Transferir'))
          ],
        ));
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transferências'),
      ),
      body : Column(
        children:  [
          ItemTransferencia(Transferencia(100.00, 1004)),
          ItemTransferencia(Transferencia(4500.00, 4010)),
          ItemTransferencia(Transferencia(1500.00, 1018)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
   return Card(
       child: ListTile(
         leading: Icon(Icons.monetization_on),
         title: Text(_transferencia.valor.toString()),
         subtitle: Text(_transferencia.numeroConta.toString()),
       )
   );
  }

}


class Transferencia{
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}