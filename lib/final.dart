import 'package:flutter/material.dart';
import 'package:simulado/home.dart';

class Final extends StatelessWidget {
  final String nomeFuncionario;
  final String funcaoSelecionada;
  final double tempoTrabalhado;

  const Final({
    required this.nomeFuncionario,
    required this.funcaoSelecionada,
    required this.tempoTrabalhado,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300, 
              height: 300,
              margin: EdgeInsets.only(bottom: 10),
              child: Image(image: AssetImage("../assets/image/flutter.jpg"))
            ),
            Text('Nome do Funcionário: $nomeFuncionario',
              style: TextStyle(
              fontSize: 20, 
            ),
            ),
            Text('Função Selecionada: $funcaoSelecionada',
              style: TextStyle(
              fontSize: 20, 
            ),
            ),
            Text('Tempo trabalhado: $tempoTrabalhado',
              style: TextStyle(
              fontSize: 20,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dados enviados!',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Obrigado!',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, 
                  onPrimary: Colors.white, 
                  textStyle: TextStyle(fontSize: 20), 
                  padding: EdgeInsets.all(16), 
                ),
                child: const Text("Voltar"),
                onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home(title: '')));
                    },
            )
          ],
        ),
      ),
    );
  }
}