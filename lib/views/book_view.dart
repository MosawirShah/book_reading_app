import 'package:book_reading_app/components/book_view_widgets/background_image.dart';
import 'package:book_reading_app/components/book_view_widgets/book_ovelay_data.dart';
import 'package:book_reading_app/components/book_view_widgets/chapters_card.dart';
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
         BackgroundImage(imageUrl: args.book.bookCover,),
          BookOverlayData(book: args.book),
          Column(children: [
            SizedBox(height: screenHeight(context) * 0.4,),
            SizedBox(
              height: screenHeight(context) * 0.35,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: args.book.chapters.length,
                  itemBuilder: (context,index){

                Chapter chapter = args.book.chapters[index];
                return ChaptersCard(chapter: chapter, book: args.book,);
              }),
            ),
          ],)
        ],
      ),
    );
  }
}

class BookArgument{
  Book book;

  BookArgument({required this.book});
}