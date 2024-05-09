import 'dart:convert';

import 'package:book_reading_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/user.dart';
class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    getUserData();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed('/home_view',arguments: HomeArguments(
        user: user
      ));
    });
    // TODO: implement initState
    super.initState();
  }
  String? data;

  late User user;

  Future<void> getUserData()async{
    data = await rootBundle.loadString('assets/user_info.json');
    if(data != null){
      var structuredData = jsonDecode(data!)["users"]["123456"];
      user = User.fromJson(structuredData);
      print(structuredData);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(FontAwesomeIcons.bookReader,
              color: Color(0xFFEABCB1),
              size: 150,
            ),
            const SizedBox(height: 15,),
            Text("Book Reading", style: GoogleFonts.dancingScript(
              fontSize: 44,
              fontWeight : FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
