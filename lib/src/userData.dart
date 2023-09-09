import 'package:flutter/material.dart';
import 'package:practica2/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  const DatosUsuarios({super.key});

  @override
  State<DatosUsuarios> createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  var _name;
  var _phone;

  final nameCtrl = TextEditingController();
  final phoneCtlr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('practica.png'),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa un nombre'),
          ),
          TextField(
            controller: phoneCtlr,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Ingresa un numero celular'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.amber),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtlr.text;

              setState(() {
                showAlertDialog(
                    context,
                    'El usuario $_name, y telefono $_phone',
                    'Mi APP :)',
                    'Ok',
                    ':(');
              });
            },
            child: const Text("Enviar"),
          )
        ],
      ),
    );
  }
}
