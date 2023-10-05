import 'package:flutter/material.dart';
import 'package:simulado/funcao.dart';

class Funcionarios extends StatefulWidget {
  const Funcionarios({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Funcionarios> createState() => _FuncState();
}

class _FuncState extends State<Funcionarios> {
  List<String> funcionarios = [
    "Funcionário A",
    "Funcionário B",
    "Funcionário C",
    "Funcionário D",
    "Funcionário E",
  ];

  String? funcionarioSelecionado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: funcionarios.length,
              itemBuilder: (context, index) {
                final funcionario = funcionarios[index];
                return ListTile(
                  title: Text(funcionario),
                  onTap: () {
                    setState(() {
                      funcionarioSelecionado = funcionario;
                    });
                  },
                  tileColor: funcionario == funcionarioSelecionado
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
              if (funcionarioSelecionado != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Funcao(
                      nomeFuncionario: funcionarioSelecionado!, title: '',
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