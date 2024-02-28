import 'package:bdki/screens/Dashboard/dashboard.dart';
import 'package:bdki/screens/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerPage = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return DashboardPage();
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
  return context.go('/');
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
