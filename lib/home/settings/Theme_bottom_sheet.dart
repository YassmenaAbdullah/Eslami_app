import 'package:eslami/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDarkMode() // true
                  ? getSelectedItem('Dark')
                  : getUnSelectedItem('Dark')),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeTheme(ThemeMode.light);
              },
              child: settingsProvider.isDarkMode()
                  ? getUnSelectedItem('Light')
                  : getSelectedItem('Light')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Theme.of(context).accentColor,
              ),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).accentColor,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
