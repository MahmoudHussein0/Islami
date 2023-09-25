import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/my_theme_data.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String>azkar=["سبحان الله","الله اكبر","لا اله الا الله"];
  int index1=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: InkWell(
            onTap: () {
              AzkarCount();
              setState(() {});
            },
            child: Column(
              children: [
                Image.asset("assets/images/sebha_image.png"),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Text(
                "عدد التسبيحات",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 69,
                height: 81,
                decoration: BoxDecoration(
                    color: MyThemeData.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("$counter")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 140,
                height: 51,
                decoration: BoxDecoration(
                    color: MyThemeData.primaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  azkar[index1],
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ],
          ),
        )
      ],
    );
  }

  AzkarCount()
  {
        if(counter<30)
          {
            counter++;
          }
        else
          {
            counter=0;
            if(index1<2)
              {
                index1++;
              }
            else
              {
                index1=0;
              }
          }


  }
}
