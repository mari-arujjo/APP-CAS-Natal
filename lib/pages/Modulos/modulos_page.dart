import 'package:flutter/material.dart';

class ModulosPage extends StatefulWidget {
  const ModulosPage({super.key});

  @override
  State<ModulosPage> createState() => _ModulosPageState();
}

class _ModulosPageState extends State<ModulosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Módulos')),
      body: Center(child: Text('Conteúdo dos Módulos')),
    );
  }
}
