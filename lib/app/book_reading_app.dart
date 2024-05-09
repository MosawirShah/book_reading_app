import 'package:book_reading_app/views/home_view.dart';
import 'package:book_reading_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

class BookReadingApp extends StatelessWidget {
  const BookReadingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashView(),
        '/home_view' : (context) => const HomeView(),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
        ),
        scaffoldBackgroundColor: const Color(0xFFFCF6F7),
      ),
    );
  }
}
