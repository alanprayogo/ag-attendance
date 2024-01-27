import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final String nama = 'Airlangga';
  final String nim = '200xx';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // membuat nama di bar atas
        appBar: AppBar(
          title: const Text('Profile'),
          titleTextStyle: const TextStyle(fontSize: 20.0),
          backgroundColor: Colors.blueAccent,
        ),
        body: Stack(
          children: [
            // menempatkan widget
            // Memanggil widget profile
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
              child: userProfile(),
            ),
            // memanggil widget data user
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 160.0, 16.0, 20.0),
              child: userData(),
            ),
          ],
        ),
      ),
    );
  }

  Widget userProfile() {
    // membuat container
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 10.0),
      child: Container(
        // ukuran container
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        // membuat decorasi container
        decoration: BoxDecoration(
          // garis container
          // warna garis container
          border: Border.all(
            color: Colors.grey,
          ),
          // lekungan pojokan garis
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: CircleAvatar(
                radius: 41.0,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 38.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/logo/dn.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                // meratakan content
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    nim,
                    style:
                        TextStyle(fontSize: 18.0, color: Colors.grey.shade600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //membuat menu user
  Widget userData() {
    return Container(
      child: Column(
        // pengaturan column
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // menu account
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
                // your account dengan menggunakan listtile
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -3),
                  dense: true,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.userCircle,
                      size: 18.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Your Account",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  subtitle: const Text('info akun'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                  // trailing: Icon(Icons.keyboard_arrow_right),
                ),

                //  Drive
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -3),
                  dense: true,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.googleDrive,
                      // FontAwesomeIcons.sync,
                      size: 22.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "G Drive",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  onTap: () {},
                  // trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          ),

          // Bantuan
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Help',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -3),
                  dense: true,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.questionCircle,
                      size: 18.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Help Center",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          // Keamanan
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Security',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                  textAlign: TextAlign.start,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -3),
                  dense: true,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.lock,
                      size: 18.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  minVerticalPadding: 0,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -3),
                  dense: true,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Icon(
                      FontAwesomeIcons.signOutAlt,
                      size: 18.0,
                      color: Colors.blue,
                    ),
                  ),
                  title: const Padding(
                    padding: EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Log Out",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  onTap: () {
                    // Navigator.pushAndRemoveUntil(context,
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //       return MyHomePage();
                    //     }), (r) {
                    //       return false;
                    //     });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
