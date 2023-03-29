import 'package:eslami/home/hadeth/Hadeth.dart';
import 'package:eslami/home/hadeth/hadeth_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({Key? key}) : super(key: key);

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (buildContext, index) {
                return HadethTitleWidget(allHadethList[index]);
              },
              itemCount: allHadethList.length,
              separatorBuilder: (_, index) {
                return Container(
                  color: Theme.of(context).accentColor,
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 70),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void loadHadethFile() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethContent = content.split('#');

    for (int i = 0; i < allHadethContent.length; i++) {
      String singleHadeth = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");

      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
