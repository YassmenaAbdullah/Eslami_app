import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      alignment: Alignment.center,
      child: Text(
        '$content ($index)',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
