import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart' show DragStartBehavior;

import 'package:ag_attendance/dashboard.dart' as dashboard;
import 'package:ag_attendance/account_page.dart' as profile;

class NavBarPage extends StatefulWidget {
  static String tag = 'navbar-page';

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  //set refresh page key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //set default nilai tab buttom navigation bar
  int _buttomNavCurrentIndex = 0;

  // inisialisasi page yang akan di jadikan buttom navigation bar
  late dashboard.DashboardPage page1;
  late profile.AccountPage page2;

  //inisilisasi jumlah page
  late List<Widget> _contain;
  // inisialisasi set page utama;
  late Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //memanggil ulang buttom navigation bar secara otomatis
    page1 = dashboard.DashboardPage();
    page2 = const profile.AccountPage();
    _contain = [page1, page2];
    currentPage = page1;
  }

  @override
  Widget build(BuildContext context) {
    // membuat tab buttom navigation bar
    return DefaultTabController(
      // jumlah buttom navigation bar
      length: 2,
      child: Scaffold(
        drawerDragStartBehavior: DragStartBehavior.down,
        key: _scaffoldKey,
        body: currentPage,
        //memanggil tab buttom navigation bar
        bottomNavigationBar: _buildButtomNav(),
      ),
    );
  }

  Widget _buildButtomNav() {
    // membuat buttom navigation bar
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // inisialisasi index buttom navigation bar
        onTap: (index) {
          setState(() {
            //memanggil index buttom navigation bar
            _buttomNavCurrentIndex = index;
            // memanggil index utama buttom navigation bar
            currentPage = _contain[index];
          });
        },
        // sset index utama buttom navigation bar
        currentIndex: _buttomNavCurrentIndex,
        fixedColor: Colors.blue,
        // menu buttom navigation bar
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'profile'),
        ]);
  }
}
