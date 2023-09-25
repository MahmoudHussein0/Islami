import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 60,
        ),
        Text("إذاعة القرآن الكريم"),
        SizedBox(
          height: 60,
        ),
        Image.asset("assets/images/Group 5.png")
      ],
    );
  }
}
