import 'package:flutter/material.dart';

class GlossarioPage extends StatefulWidget {
  const GlossarioPage({super.key});

  @override
  State<GlossarioPage> createState() => _GlossarioPageState();
}

class _GlossarioPageState extends State<GlossarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Glossário')),
      body: Center(child: Text('Conteúdo do Glossário')),
    );
  }
}
