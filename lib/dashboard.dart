import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  static String tag = 'dashboard-page';

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Dashboard',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal[900],
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: SizedBox(
                      height: 100,
                      child: Flexible(
                          child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                height: 90.0,
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.transparent),
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Menu 1',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Menu 1'),
                                    duration: Duration(seconds: 5),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                height: 90.0,
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.transparent),
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Menu 2',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          )
                        ],
                      )),
                    ))
              ],
            ),
          )),
    );
  }
}
