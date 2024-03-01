import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:session4/widgets/CustomContainer.dart';

import 'package:session4/widgets/CustomView.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;
  List<Widget> WidgetPages = [customListView(), customGridView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          'Task4',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.red,
        onTap: (index) {
          setState(() {
            SelectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'ListView'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp), label: 'GrideView'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: WidgetPages.elementAt(SelectedIndex),
      ),
    );
  }
}
