import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/my_theme_data.dart';
import '../sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title:
                Text(args.name, style: Theme.of(context).textTheme.bodySmall),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: MyThemeData.primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: MyThemeData.primaryColor,
                    thickness: 4,
                  ),
                    itemBuilder: (context, index) {
                      return Text(
                        verses[index],
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      );
                    },
                    itemCount: verses.length),
              ),
            ),
          ),
        )
      ],
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("/n");
    verses = lines;
    setState(() {});
  }
}
