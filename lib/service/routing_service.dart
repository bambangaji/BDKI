import 'package:bdki/screens/Dashboard/dashboard.dart';
import 'package:bdki/screens/Login/login.dart';
import 'package:bdki/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerPage = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return Splash();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return DashboardPage();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
        ),
      ],
    ),
  ],
);

void goToDashboard(BuildContext context) {
  return context.go('/dashboard');
}

void goToLogin(BuildContext context) {
  return context.go('/login');
}

void goToNote(BuildContext context) {
  return context.go('/note');
}

void goToUser(BuildContext context) {
  return context.go('/user');
}

void goToRegister(BuildContext context) {
  return context.go('/register');
}
