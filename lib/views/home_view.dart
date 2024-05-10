import 'package:book_reading_app/components/home_widgets/books_catalogue.dart';
import 'package:book_reading_app/components/home_widgets/circular_container.dart';
import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/user.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  static const routeName = '/home-view';
  @override
  Widget build(BuildContext context) {
    HomeArguments args =
        ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CircularContainer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight(context) * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth(context) * 0.08),
                  child: Text(
                    "What are you \nreading today?",
                    style: GoogleFonts.poppins(fontSize: 24),
                  ),
                ),
               BookCatalogue(books: args.user!.books),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeArguments {
  User? user;
  HomeArguments({this.user});
}
