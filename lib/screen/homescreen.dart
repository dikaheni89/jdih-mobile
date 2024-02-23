// ignore_for_file: unused_field

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jdihmobile/page/homepage.dart';
import 'package:jdihmobile/page/informasipage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _pageController = PageController(initialPage: 0);
  final _controller = NotchBottomBarController(index: 0);
  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    const HomePage(),
    const InformasiPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomBarPages.length, (index) => bottomBarPages[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
            notchBottomBarController: _controller,
            color: Colors.green,
            kIconSize: 10.0,
            kBottomRadius: 20.0,
            showLabel: false,
            notchColor: Colors.white,
            removeMargins: false,
            bottomBarWidth: 500,
            durationInMilliSeconds: 300,
            bottomBarItems: const [
              BottomBarItem(
                inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.green,
                  ),
                  itemLabel: 'Page 1',
              ),

              BottomBarItem(
                inActiveItem: Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                activeItem: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                itemLabel: 'Page 2',
              ),

              BottomBarItem(
                inActiveItem: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                activeItem: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                itemLabel: 'Page 5',
              ),
            ],
            onTap: (index) {
                _pageController.jumpToPage(index);
              },
          ) : null,
    );
  }
}