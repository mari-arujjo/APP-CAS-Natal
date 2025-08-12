import 'package:flutter/material.dart';

class TermosPage extends StatefulWidget {
  const TermosPage({super.key});

  @override
  State<TermosPage> createState() => _TermosPageState();
}

class _TermosPageState extends State<TermosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Termos')));
  }
}
