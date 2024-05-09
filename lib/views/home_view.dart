import 'package:book_reading_app/components/home_widgets/circular_container.dart';
import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/user.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     HomeArguments args = ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CircularContainer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight(context) * 0.04,),
                Padding(
                  padding: const EdgeInsets.all(35),
                  child: Container(
                    child: Text("What are you \nreading today?",style: GoogleFonts.poppins(
                      fontSize: 24
                    ),),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: screenHeight(context) * 0.3,
                  child: ListView(
                    children: args.user!.books.map((book) =>Container(

                      width: screenWidth(context)*0.3,)).toList(),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class HomeArguments{
  User? user;
  HomeArguments({this.user});
}