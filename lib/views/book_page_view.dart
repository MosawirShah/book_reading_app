import 'package:book_reading_app/model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPageView extends StatefulWidget {
  const BookPageView({Key? key}) : super(key: key);

  static const routeName = 'book-page-view';

  @override
  State<BookPageView> createState() => _BookPageViewState();
}

class _BookPageViewState extends State<BookPageView> {
  int pageNo = 1;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.chapter!.title),
        centerTitle: true,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView.builder(
                      onPageChanged: (int value) {
                        setState(() {
                          pageNo = value + 1;
                        });
                      },
                      dragStartBehavior: DragStartBehavior.down,
                      itemCount: args.chapter!.pages.length,
                      itemBuilder: (context, index) {
                        String page = args.chapter!.pages[index];
                        return Text(page,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 19,
                              letterSpacing: 1.5,
                              height: 1.5,
                            ),);
                      }

                      ///
                      ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Text("${pageNo}/${args.chapter!.pages.length}",style: TextStyle(
                  fontSize: 24
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

class PageArguments {
  Chapter? chapter;
  Book? book;

  PageArguments({this.chapter, this.book});
}
