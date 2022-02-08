import 'package:flutter/material.dart';

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
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          ),
          SizedBox(
            height: 6.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Icons.messenger,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
          ],
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.home))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.group))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.watch))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.gamepad))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.ring_volume))),
                  Expanded(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu))),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                        iconSize: 50,
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
                    onPressed: () {},
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
                      Icons.room,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
