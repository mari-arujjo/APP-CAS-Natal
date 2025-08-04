import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarWidget extends StatefulWidget {
  final StatefulNavigationShell navigatiponShell;
  const NavBarWidget({super.key, required this.navigatiponShell});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
