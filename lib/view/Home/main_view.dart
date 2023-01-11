import 'package:flutter/material.dart';
import 'package:flutter_tabbar/view/Home/baritem_view.dart';
import 'package:flutter_tabbar/view/Home/home_view.dart';
import 'package:flutter_tabbar/view/Home/my_view.dart';
import 'package:flutter_tabbar/view/Home/search_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List views = const [
    HomeView(),
    BarItemView(),
    SearchView(),
    MyView(),
  ];
  int currentindex = 0;

  void ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: views[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentindex,
        backgroundColor: Colors.white,
        selectedFontSize: 15,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        selectedLabelStyle: const TextStyle(fontSize: 20, color: Colors.red),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: "Ürünler"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Kullanıcı"),
        ],
      ),
    );
  }
}
