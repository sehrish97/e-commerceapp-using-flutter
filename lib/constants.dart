import 'package:counterapp1/drawerviews/favscreen.dart';
import 'package:counterapp1/drawerviews/historyscreen.dart';
import 'package:counterapp1/drawerviews/homescreen.dart';
import 'package:counterapp1/drawerviews/profilescreen.dart';
import 'package:counterapp1/drawerviews/settingscree.dart';
import 'package:counterapp1/navitems.dart';
import 'package:flutter/material.dart';

class Constants {
  static var drawerList = [
    NavItems("Home", HomeView(), Icon(Icons.house), Colors.green.shade100),
    NavItems("Profile", ProfileView(), Icon(Icons.person), Colors.red.shade100),
    NavItems(
        "Favorities", FavScreen(), Icon(Icons.favorite), Colors.blue.shade100),
    NavItems(
        "History", HostoryView(), Icon(Icons.history), Colors.grey.shade100),
    NavItems("Settings", SettingsView(), Icon(Icons.settings),
        Colors.purple.shade100),
    NavItems("Logout", HomeView(), Icon(Icons.logout), Colors.orange.shade100),
  ];
}
