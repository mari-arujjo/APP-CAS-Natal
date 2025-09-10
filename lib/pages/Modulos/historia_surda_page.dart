import 'package:flutter/material.dart';

class ModuloHistoriaSurdaPage extends StatefulWidget {
  const ModuloHistoriaSurdaPage({super.key});

  @override
  State<ModuloHistoriaSurdaPage> createState() => _ModuloHistoriaSurdaPageState();
}

class _ModuloHistoriaSurdaPageState extends State<ModuloHistoriaSurdaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('História e Cultura Surda')),
    );
  }
}