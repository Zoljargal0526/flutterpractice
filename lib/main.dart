import 'package:fb_newsfeed/assets/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(const MaterialApp(
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text(
                'facebook',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                    icon: const Icon(
                      MyFlutterApp.facebook_messenger,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
              elevation: 0,
              bottom: TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(icon: Icon(Icons.home, color: Colors.black, size: 22)),
                  Tab(
                      icon: Icon(MyFlutterApp.group,
                          color: Colors.black, size: 22)),
                  Tab(
                      icon: Icon(MyFlutterApp.television,
                          color: Colors.black, size: 22)),
                  Tab(icon: Icon(Icons.gamepad, color: Colors.black, size: 22)),
                  Tab(
                      icon: Icon(MyFlutterApp.bell,
                          color: Colors.black, size: 22)),
                  Tab(icon: Icon(Icons.menu, color: Colors.black, size: 22)),
                ],
              )),
          body: TabBarView(
            children: [
              HomePage(),
              buildPage('Group Page'),
              buildPage('Watch Page'),
              buildPage('Gaming Page'),
              buildPage('Notification Page'),
              buildPage('Menu Page'),
            ],
          ),
        ),
      );
  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
