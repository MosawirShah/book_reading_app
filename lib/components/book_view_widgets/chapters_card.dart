import 'package:book_reading_app/model/user.dart';
import 'package:book_reading_app/views/book_page_view.dart';
import 'package:flutter/material.dart';

class ChaptersCard extends StatefulWidget {
  ChaptersCard({Key? key, this.chapter, this.book}) : super(key: key);

  Chapter? chapter;
  Book? book;
  @override
  State<ChaptersCard> createState() => _ChaptersCardState();
}

class _ChaptersCardState extends State<ChaptersCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(BookPageView.routeName,arguments: PageArguments(
            chapter: widget.chapter,
            book : widget.book
          ));
        },
        child: Card(
          elevation: 20,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(widget.chapter!.title),
                Text(widget.chapter!.description),
              ],),
              Row(
                children: [
                  Text("Pages: ${widget.chapter!.pages.length}"),
                  const Icon(Icons.chevron_right, size: 30,)
                ],
              )
            ],),
          ),
        ),
      ),
    );
  }
}
