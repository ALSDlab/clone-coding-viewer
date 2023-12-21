import 'package:clone_coding_image_viewer/addImageScreen.dart';
import 'package:clone_coding_image_viewer/homeScreen.dart';
import 'package:clone_coding_image_viewer/shortsScreen.dart';
import 'package:clone_coding_image_viewer/storageScreen.dart';
import 'package:clone_coding_image_viewer/subscribeScreen.dart';
import 'package:flutter/material.dart';

class MainScreenControl extends StatefulWidget {
  const MainScreenControl({super.key});

  @override
  State<MainScreenControl> createState() => _MainScreenControlState();
}

class _MainScreenControlState extends State<MainScreenControl> {
  var _index = 0;
  final _pages = [
    const HomeScreen(),
    const ShortsScreen(),
    const AddImageScreen(),
    const SubscribeScreen(),
    const StorageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leadingWidth: 140,
        leading: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: const Row(
            children: [
              Icon(
                Icons.linked_camera_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 5),
              Text(
                'VIEWER',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          onPressed: () {
            setState(() {
              _index = 0;
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_pin),
            onPressed: () {},
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Shrots',
              icon: Icon(Icons.access_time_sharp),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.add_circle_outline, size: 32),
            ),
            BottomNavigationBarItem(
              label: '구독',
              icon: Icon(Icons.account_tree_outlined),
            ),
            BottomNavigationBarItem(
              label: '보관함',
              icon: Icon(Icons.storage),
            ),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,

        ),
      ),
    );
  }
}
