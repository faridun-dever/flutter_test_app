import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/style/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigaion Container"),
      ),
      body: Center(
        child: Text("Test"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_home.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_heart.svg"),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_add.svg"),
            label: "Add Post",
          ),
        ],
        onTap: (index) {
          setState(
            () {
              current_index = index;
            },
          );
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColor.primary,
        currentIndex: current_index,
      ),
    );
  }
}
