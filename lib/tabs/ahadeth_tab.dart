import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Container(
      color: Colors.amber,
    );
  }


  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String>ahadethList = ahadeth.split("#");
      String HadethOne=ahadethList[0];
      List<String>hadethOneLines=HadethOne.split("/n");

    });
  }
}
