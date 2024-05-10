import 'package:book_reading_app/components/home_widgets/book_cover.dart';
import 'package:book_reading_app/model/user.dart';
import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BookCatalogue extends StatelessWidget {
   BookCatalogue({Key? key,required this.books}) : super(key: key);

   List<Book> books;
  @override
  Widget build(BuildContext context) {
    return   Container(
      // color: Colors.red,
      height: screenHeight(context) * 0.4,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: books
            .map((book) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                width: screenWidth(context) * 0.45,
                //  color: Colors.green,
                child: Center(
                  child: Container(
                    height:screenHeight(context) * 0.3,
                    width: screenWidth(context) * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(color: Colors.black26,blurRadius: 18),
                      ],
                    ),
                  child:BookCover(book: book),
                  ),
                ),
              ),

              Positioned(
                  left: 8,
                  child: Container(
                      height: screenHeight(context) * 0.14,
                      width: screenWidth(context) * 0.25,
                      child: Image(
                        image: NetworkImage(book.bookCover),
                      ),),),
            ],
          ),
        ))
            .toList(),
      ),
    );
  }
}
