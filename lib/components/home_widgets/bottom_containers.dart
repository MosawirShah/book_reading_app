import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({Key? key}) : super(key: key);

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
            child: Center(child: Text("Read",style: TextStyle(color: Colors.white),)),
          ),
        ),
      ],
    );
  }
}
