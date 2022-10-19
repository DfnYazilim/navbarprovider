import 'package:flutter/material.dart';
import 'package:navbarprovider/screen1.dart';
import 'package:navbarprovider/screen2.dart';
import 'package:navbarprovider/screen3.dart';

class NavbarProvider with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
  List<NavbarP> _items = [
    NavbarP(widget: Screen1(),name: 'Home',icon: Icons.home),
    NavbarP(widget: Screen2(),name: 'Messages',icon: Icons.chat),
    NavbarP(widget: Screen3(),name: 'Profile',icon: Icons.account_box_rounded),
  ];

  List<NavbarP> get items => _items;
}

class NavbarP {
  String? name;
  IconData? icon;
  Widget? widget;

  NavbarP({this.widget, this.name, this.icon});
}
