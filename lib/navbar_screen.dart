import 'package:flutter/material.dart';
import 'package:navbarprovider/navbar_provider.dart';
import 'package:provider/provider.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mp = Provider.of<NavbarProvider>(context, listen: true);
    return Scaffold(
      body: mp.items[mp.selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mp.selectedIndex,
        onTap: (i){
          mp.selectedIndex = i;
        },
        items: mp.items
            .map((e) => BottomNavigationBarItem(
                icon: Icon(e.icon), label: e.name ?? ""))
            .toList(),
      ),
    );
  }
}
