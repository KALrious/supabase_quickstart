import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_quickstart/account_page.dart';
import 'package:supabase_quickstart/login_page.dart';
import 'package:supabase_quickstart/splash_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://cnkvzoqtwhicgerwuabd.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNua3Z6b3F0d2hpY2dlcnd1YWJkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDU0Mzk3MDYsImV4cCI6MjAyMTAxNTcwNn0.ljc4qP8oHsbZrZ9Aoz3LU6fTSlXvfJlhVh0z-I27vdY',
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}