import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class cadcartoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(title: const Text('Cadastro de Cartões')),
        body: SingleChildScrollView(child: Body()),
      ),
    );
  }
}

class Body extends StatelessWidget {
  bool mostarSenha = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        FieldDescricao(),
        SizedBox(
          height: 20,
        ),
        CartaoFrente(context),
        SizedBox(
          height: 20,
        ),
        CartaoAtras(context),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

Widget CartaoFrente(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [cartaoFront(context)],
    ),
  );
}

Widget cartaoFront(context) {
  return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 250,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 16, 121, 22)),
      child: Column(
        children: [
          fieldNumero(),
          SizedBox(
            height: 14,
          ),
          fieldValidade(),
          SizedBox(
            height: 50,
          ),
          textNome()
        ],
      ));
}

Widget CartaoAtras(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [cartaoBack(context)],
    ),
  );
}

Widget cartaoBack(context) {
  return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 250,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 221, 203, 43)),
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black,
          ),
          SizedBox(height: 14),
          Container(
            height: 50,
            color: Colors.grey,
          ),
          SizedBox(height: 14),
          fieldCvv(),
        ],
      ));
}

Widget fieldNumero() {
  return TextFormField(
    keyboardType: TextInputType.number,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
    ),
    decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: ('Numero')),
  );
}

Widget fieldValidade() {
  return TextFormField(
    keyboardType: TextInputType.number,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 16,
    ),
    decoration: const InputDecoration(
        border: OutlineInputBorder(), labelText: ('Validade')),
  );
}

Widget fieldCvv() {
  return TextFormField(
    maxLength: 3,
    keyboardType: TextInputType.number,
    textAlign: TextAlign.center,
    style: const TextStyle(
      fontSize: 16,
    ),
    decoration:
        const InputDecoration(border: OutlineInputBorder(), labelText: ('CVV')),
  );
}

Widget textNome() {
  return Text(
    'Yohan Toledo',
    style: TextStyle(fontSize: 24),
  );
}

Widget FieldDescricao() {
  return TextFormField(
    decoration:
        InputDecoration(border: OutlineInputBorder(), labelText: ('Descricao')),
  );
}

Widget textoMaior() {
  return Text(
    'texto maior',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
    textAlign: TextAlign.center,
  );
}

Widget textoMenor() {
  return Text(
    'texto menor',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    textAlign: TextAlign.center,
  );
}
