import 'package:flutter/material.dart';

class AppNavigation {
  AppNavigation._();
  static String initR = '/home';

  /// KEYS DE NAVEGAÇÃO
  /// navegação global raiz do app, serve para navegar em telas fora da estrutura do shell, como:
  /// tela de login, splash screen e pags que nao fazem parte da navegação por abas
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  /// navegadores independentes, usados por cada StatefulShellBranch.
  /// mantém pilhas de navegação separadas
  static final _rootNavigatorHome = GlobalKey<NavigatorState>(
    debugLabel: 'shellHome',
  );
  static final _rootNavigatorGlossario = GlobalKey<NavigatorState>(
    debugLabel: 'shellGlossario',
  );
  static final _rootNavigatorModulos = GlobalKey<NavigatorState>(
    debugLabel: 'shellModulos',
  );
}
