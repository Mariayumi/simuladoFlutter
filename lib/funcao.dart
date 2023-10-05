import 'package:flutter/material.dart';
import 'package:simulado/tempo.dart';

class Funcao extends StatefulWidget {
  final String nomeFuncionario;

  const Funcao({
    required this.nomeFuncionario, required String title,
  });

  @override
  State<Funcao> createState() => _FuncaoState();
}

class _FuncaoState extends State<Funcao> {
  List<String> funcoes = [
    "Função 1",
    "Função 2",
    "Função 3",
    "Função 4",
  ];

  String? funcaoSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Função'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Funcionário selecionado: ${widget.nomeFuncionario}',
            style: TextStyle(
              fontSize: 20,
            ),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: funcoes.length,
              itemBuilder: (context, index) {
                final funcao = funcoes[index];
                return ListTile(
                  title: Text(funcao),
                  onTap: () {
                    setState(() {
                      funcaoSelecionada = funcao;
                    });
                  },
                  tileColor: funcao == funcaoSelecionada
                      ? Colors.blue.withOpacity(0.3)
                      : null,
                );
              },
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, 
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 20), 
                padding: EdgeInsets.all(16), 
              ),
            onPressed: () {
              if (funcaoSelecionada != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tempo(
                      nomeFuncionario: widget.nomeFuncionario,
                      funcaoSelecionada: funcaoSelecionada!, title: '',
                    ),
                  ),
                );
              }
            },
            child: Text("Selecionar"),
          ),
        ],
      ),
    );
  }
}
