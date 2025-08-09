import 'package:app_cas_natal/assets/cores.dart';
import 'package:flutter/material.dart';

class FotoWidget extends StatefulWidget {
  const FotoWidget({super.key});

  @override
  State<FotoWidget> createState() => _FotoWidgetState();
}

class _FotoWidgetState extends State<FotoWidget> {
  final cores = Cores();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: cores.azulEscuro,
      child: Icon(Icons.person, size: 40, color: Colors.white),
    );
  }
}
