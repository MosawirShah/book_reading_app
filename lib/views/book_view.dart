import 'package:book_reading_app/model/user.dart';
import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

 static const routeName = 'book-view';

  @override
  Widget build(BuildContext context) {
    BookArgument args = ModalRoute.of(context)!.settings.arguments as BookArgument;
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)
            ),
            child: Container(
              height: screenHeight(context) * 0.45,
              width: screenWidth(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(args.book.bookCover,),
                fit: BoxFit.cover),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
            ),
            child: Container(
              height: screenHeight(context) * 0.45,
              width: screenWidth(context),
    color: Colors.grey.withOpacity(0.8),
              child: Container(
                height: screenHeight(context) * 0.2,
                child: Row(
                  children: [
                    ///TODO: BOOK SCREEN ROW WIDGETS
                    Expanded(
                      flex: 1,
                        child: SizedBox()),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(args.book.title, style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14
                          ),),
                            Text(args.book.author, style: GoogleFonts.poppins(
                                color: Colors.white54,
                                fontSize: 14
                            ),),
                            Row(children: [
                              Expanded(
                                child: Text(args.book.details, style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 12
                                ),),
                              ),
                              Container(
                                height: screenHeight(context) * 0.1,
                                width: screenWidth(context) * 0.1,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,),
                                    const SizedBox(height: 10,),
                                    Text(args.book.rating.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],)
                        ],),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: screenHeight(context) * 0.2,
                        child: Image(image: NetworkImage(
                          args.book.bookCover
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookArgument{
  Book book;

  BookArgument({required this.book});
}