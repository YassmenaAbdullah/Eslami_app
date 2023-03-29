import 'package:eslami/home/hadeth/hadeth_tab.dart';
import 'package:eslami/home/quran/quran_tab.dart';
import 'package:eslami/home/radio/radio_tab.dart';
import 'package:eslami/home/sebha/sebha_tab.dart';
import 'package:eslami/home/settings/settings_tab.dart';
import 'package:eslami/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getMainBackGroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Islami'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (newlySelectedIndex) {
            setState(() {
              selectedIndex = newlySelectedIndex;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_hadeth.png'),
              ),
              label: 'Hadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_sebha.png'),
              ),
              label: 'Tasbeh',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const ImageIcon(
                AssetImage('assets/images/icon_radio.png'),
              ),
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranScreen(),
    HadethScreen(),
    RadioScreen(),
    SebhaScreen(),
    Settingstab(),
  ];
}
