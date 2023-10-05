import 'package:flutter/material.dart';
import 'package:simulado/final.dart';

class Tempo extends StatefulWidget {
  final String nomeFuncionario;
  final String funcaoSelecionada;

  const Tempo({
    required this.nomeFuncionario,
    required this.funcaoSelecionada, required String title,
  });


  @override
  State<Tempo> createState() => _TempoState();
}

class _TempoState extends State<Tempo>{

  TextEditingController tempoTrabalhadoController = TextEditingController();

  @override
  void dispose() {
    tempoTrabalhadoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tempo trabalhado'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
            Text('Nome do Funcionário: ${widget.nomeFuncionario}',
            style: TextStyle(
              fontSize: 20, 
            ),),
            Text('Função Selecionada: ${widget.funcaoSelecionada}',
            style: TextStyle(
              fontSize: 20, 
            ),),
            Container(
              width: MediaQuery.of(context).size.width * 0.8, 
              child: TextField(
                controller: tempoTrabalhadoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Tempo na função'),
                      ),
            ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                  primary: Colors.blue, 
                  onPrimary: Colors.white, 
                  textStyle: TextStyle(fontSize: 20), 
                  padding: EdgeInsets.all(16), 
                ),
                onPressed: () {
                  final tempoTrabalhado =
                      double.tryParse(tempoTrabalhadoController.text);
                  if (tempoTrabalhado != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Final(
                          nomeFuncionario: widget.nomeFuncionario,
                          funcaoSelecionada: widget.funcaoSelecionada,
                          tempoTrabalhado: tempoTrabalhado,
                        ),
                      ),
                    );
                  }
                },
                child: Text("Confirmar"),
              ),
        ),
        ],)
      )
    );
    throw UnimplementedError();
  }
}