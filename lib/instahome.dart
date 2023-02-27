import 'package:flutter/material.dart';

import 'instapage1.dart';
class InstaHome extends StatefulWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  int selectedindex = 0;
  List page = [InstaPage1(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Instagrame",
            style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child:
              Icon(Icons.add_box_outlined, color: Colors.black, size: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                Icons.maps_ugc_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.live_tv_outlined),label: "reels"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "profile"),
          ],
          type: BottomNavigationBarType.fixed,
          onTap:  (index){
            setState(() {
              selectedindex =index;
            });
          },
          currentIndex: selectedindex,

        ),
        body: page[selectedindex]
    );
  }
}
