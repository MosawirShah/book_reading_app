import 'package:book_reading_app/model/user.dart';
import 'package:book_reading_app/views/book_view.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
 BottomContainer({Key? key, this.book}) : super(key: key);

  Book? book;

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(child: Center(child: Text("Detail")))),
        Expanded(
          child: Container(

            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),

              )
            ),
            child: Center(child: GestureDetector(
              ///TODO: BOTTOM CONTAINER
              onTap: (){
                Navigator.of(context).pushNamed(BookView.routeName, arguments: BookArgument(book: widget.book!));
              },
                child: const Text("Read",style: TextStyle(color: Colors.white),))),
          ),
        ),
      ],
    );
  }
}
