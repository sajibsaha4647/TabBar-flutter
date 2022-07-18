import 'package:flutter/material.dart';

import 'Tab1.dart';
import 'Tab2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: DefaultTabController(
         length: 2,
         child: HomePage(),
       ) 
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.account_balance),text: "tab1",),
          Tab(icon: Icon(Icons.account_balance),text: "tab1",)
        ],

        ),
      ),
      body: Container(
          child: TabBarView(children: [
            Tab1(),
            Tab2()
          ],),
      ),
    ));
  }
}


