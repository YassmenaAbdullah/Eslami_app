import 'package:eslami/home/settings/Theme_bottom_sheet.dart';
import 'package:flutter/material.dart';

class Settingstab extends StatefulWidget {
  @override
  State<Settingstab> createState() => _SettingstabState();
}

class _SettingstabState extends State<Settingstab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(11),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Theme.of(context).accentColor,
                  width: 1.5,
                ),
              ),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.all(11),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Theme.of(context).accentColor,
                width: 1.5,
              ),
            ),
            child: Text(
              'English',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemeBottomSheet();
        });
  }
}
