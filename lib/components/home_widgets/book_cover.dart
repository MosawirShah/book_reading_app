import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/user.dart';
import 'bottom_containers.dart';

class BookCover extends StatelessWidget {
  BookCover({Key? key, required this.book}) : super(key: key);

  Book book;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            book.title,
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            book.author,
            style: GoogleFonts.poppins(fontSize: 13, color: Colors.black),
          ),
        ),
        SizedBox(
          height: screenHeight(context) * 0.07,
          child: BottomContainer(book:book)
        ),
      ],
    );
  }
}
