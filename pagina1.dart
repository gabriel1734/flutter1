import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => __Pagina2State();
}

class __Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controlaNome = TextEditingController();
    final TextEditingController _controlaNota = TextEditingController();
    String _msg = "a";

    void _calculaResultado() {
      setState(() {
        var nota = double.tryParse(_controlaNota.text);
        if (nota != null) {
          if (nota < 6) {
            _msg =
                "Nome: ${_controlaNome.text}\nNota: ${_controlaNota.text}\nResultado: Fulano foi Reprovado!";
          } else {
            _msg =
                "Nome: ${_controlaNome.text}\nNota: ${_controlaNota.text}\nResultado: Fulano foi aprovado!";
          }
        }
        print(_msg);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado final:'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('Nome:'),
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: _controlaNome,
                  )),
            ],
          ),
          Row(
            children: [
              Text('Nota:'),
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: _controlaNota,
                  )),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _calculaResultado();
              },
              child: const Text('Resultado')),
          Row(
            children: [
              Text('$_msg'),
            ],
          ),
        ],
      ),
    );
  }
}
