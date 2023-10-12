import 'package:flutter/material.dart';
import 'package:flutter_test_app/style/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bgColor,
        elevation: 8,
        title: Text("Fluter Course"),
        centerTitle: false,
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: ListView(
        children: mockUsersFromServer(),
      ),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user_1.png',
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text("Sarah Fernandez")
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 20; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
