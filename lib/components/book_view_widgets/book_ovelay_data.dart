import 'package:book_reading_app/model/user.dart';
import 'package:book_reading_app/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookOverlayData extends StatelessWidget {
  BookOverlayData({Key? key, this.book}) : super(key: key);

  Book? book;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)
      ),
      child: Container(
        height: screenHeight(context) * 0.45,
        width: screenWidth(context),
        color: Colors.grey.withOpacity(0.8),
        child: SizedBox(
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
                      Text(book!.title, style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24
                      ),),
                      Text(book!.author, style: GoogleFonts.poppins(
                          color: Colors.white60,
                          fontSize: 16
                      ),),
                      Row(children: [
                        Expanded(
                          child: Text(book!.details, style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 8
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
                              Text(book!.rating.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                      ],),
                      SizedBox(height: 10,),
                      Container(
                        height: screenHeight(context) * 0.04,
                        width: screenWidth(context) * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Text("Read")),
                      ),
                    ],),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: screenHeight(context) * 0.2,
                  child: Image(image: NetworkImage(
                      book!.bookCover
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
