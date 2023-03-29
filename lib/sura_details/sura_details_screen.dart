import 'package:eslami/my_theme.dart';
import 'package:eslami/providers/settings_provider.dart';
import 'package:eslami/sura_details/sura_details_args.dart';
import 'package:eslami/sura_details/verse_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura-details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    // Receive parameters
    // down casting convert from ptr of type Object to pointer of type suraDetailsScreen
    var settingsProvider = Provider.of<SettingsProvider>(context);
    SuraDetailsArguments arguments =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArguments;
    if (verses.isEmpty) {
      readFiles(arguments.index + 1);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(settingsProvider.getMainBackGroundImage()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            arguments.name,
          ),
        ),
        body: verses.isEmpty
            ? Center(
          child: CircularProgressIndicator(
            color: MyTheme.lightPrimary,
          ),
        )
            : Card(
          elevation: 12,
          margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.9),
          ),
          child: ListView.separated(
            itemBuilder: (_, index) {
              return VerseWidget(verses[index], index + 1);
            },
            itemCount: verses.length,
            separatorBuilder: (_, __) {
              return Container(
                color: Theme.of(context).accentColor,
                      height: 2,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 64.0),
                    );
            },
          ),
        ),
      ),
    );
  }

  void readFiles(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }
}
