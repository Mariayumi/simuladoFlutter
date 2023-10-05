import 'package:flutter/material.dart';
import 'package:simulado/funcionarios.dart';

class Home extends StatefulWidget {
    const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 300, 
                height: 300,
                margin: EdgeInsets.only(bottom: 10),
                child: Image(image: AssetImage("../assets/image/flutter.jpg"))
              ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white, 
                  textStyle: TextStyle(fontSize: 20), 
                  padding: EdgeInsets.all(16), 
                ),
                child: const Text("Iniciar"),
                onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Funcionarios(title: 'Lista de funcionários',)));
                    },
              ),
            )
          ]
      )
    );
    throw UnimplementedError();
  }

}