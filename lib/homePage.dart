import 'package:flutter/material.dart';
import 'post.dart';
import 'seconScreen.dart';
import 'assets/my_flutter_app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 24,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage(
                                'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-portrait-176256935.jpg'),
                          ),
                        )),
                    Expanded(
                      flex: 4,
                      child: TextField(
                        style: const TextStyle(
                            fontSize: 15.0, height: 1.0, color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "What's on your mind?",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(mainAxisSize: MainAxisSize.max, children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    label: const Text(
                      'Live',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.live_tv,
                      color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    label: const Text(
                      'Photo',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    icon: const Icon(
                      Icons.photo,
                      color: Colors.green,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    label: const Text(
                      'Room',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_camera_front,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ]),
              Post(content: "AFS", imageUrl: ""),
              Post(
                content: 'SDFSG',
                imageUrl: '',
                title: "SDFDSF",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
