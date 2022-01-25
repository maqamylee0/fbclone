import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const primaryColor = Colors.grey;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DefaultTabController(
      length: 8,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
             const SliverAppBar(
              title: Text('Facebook'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.house_rounded, color: Colors.black)),
                  Tab(icon: Icon(Icons.house_rounded, color: Colors.black)),
                  Tab(icon: Icon(Icons.house_rounded, color: Colors.black)),
                  Tab(icon: Icon(Icons.house_rounded, color: Colors.black)),
                  Tab(
                      icon: Icon(Icons.connected_tv_rounded,
                          color: Colors.black)),
                  Tab(icon: Icon(Icons.festival_rounded, color: Colors.black)),
                  Tab(
                      icon: Icon(Icons.circle_notifications,
                          color: Colors.black)),
                  Tab(
                      icon: Icon(Icons.format_align_left_sharp,
                          color: Colors.black)),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: <Widget>[
            Icon(Icons.house_rounded),
            Icon(Icons.house_rounded),
            Icon(Icons.house_rounded),
            Icon(Icons.house_rounded),
            Icon(Icons.connected_tv_rounded),
            Icon(Icons.circle_notifications),
            Icon(Icons.circle_notifications),
            Icon(Icons.format_align_left_sharp),
          ],
        ),
      )),
    ));
  }
}
