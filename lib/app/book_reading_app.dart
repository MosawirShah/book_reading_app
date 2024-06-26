import 'package:book_reading_app/views/book_page_view.dart';
import 'package:book_reading_app/views/book_view.dart';
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
        HomeView.routeName : (context) => HomeView(),
        BookView.routeName : (context) => BookView(),
        BookPageView.routeName : (context)=> BookPageView()
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
