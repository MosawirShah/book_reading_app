import 'package:flutter/material.dart';

import '../../utils/screen_size.dart';

class BackgroundImage extends StatelessWidget {
 BackgroundImage({Key? key, this.imageUrl}) : super(key: key);

  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return   ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)
      ),
      child: Container(
        height: screenHeight(context) * 0.45,
        width: screenWidth(context),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageUrl!,),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
