import 'package:go_router/go_router.dart';
import 'package:miscelanea/screens/screens.dart';

final appRutas = GoRouter(
  // initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => InicioScreen(),
    ),
    GoRoute(
      path: '/biometrico',
      builder: (context, state) => BiometricoScreen(),
    ),
    GoRoute(
      path: '/anuncios',
      builder: (context, state) => AnunciosScreen(),
    ),
    GoRoute(
      path: '/permisos',
      builder: (context, state) => PermisosScreen(),
    ),
  ],
);
