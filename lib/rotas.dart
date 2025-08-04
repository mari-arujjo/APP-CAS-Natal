import 'package:app_cas_natal/nav.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();
  static String initR = '/inicio';

  /// KEYS DE NAVEGAÇÃO
  /// navegação global raiz do app, serve para navegar em telas fora da estrutura do shell, como:
  /// tela de login, splash screen e pags que nao fazem parte da navegação por abas
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  /// navegadores independentes, usados por cada StatefulShellBranch.
  /// mantém pilhas de navegação separadas
  static final _rootNavigatorInicio = GlobalKey<NavigatorState>(
    debugLabel: 'shellInicio',
  );
  static final _rootNavigatorGlossario = GlobalKey<NavigatorState>(
    debugLabel: 'shellGlossario',
  );
  static final _rootNavigatorModulos = GlobalKey<NavigatorState>(
    debugLabel: 'shellModulos',
  );

  static final GoRouter rotas = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavBarWidget(navigatiponShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _rootNavigatorInicio,
            routes: [GoRoute(path: '/iome', name: 'Inicio')],
          ),
        ],
      ),
    ],
  );
}
