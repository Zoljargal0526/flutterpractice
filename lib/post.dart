import 'package:flutter/material.dart';
import 'assets/my_flutter_app_icons.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 10.0,
        color: Colors.grey,
      ),
      Row(mainAxisSize: MainAxisSize.max, children: [
        const Expanded(
          flex: 1,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-portrait-176256935.jpg',
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(children: [
                      Text('1d'),
                      Icon(
                        MyFlutterApp.globe,
                        size: 10,
                      )
                    ])
                  ]),
            )),
        Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  MyFlutterApp.more_horiz,
                  color: Colors.grey,
                ))),
        Expanded(
            flex: 1,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  MyFlutterApp.cancel,
                  size: 14,
                  color: Colors.grey,
                ))),
      ]),
      Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
        child: Text(
          'Title',
          textAlign: TextAlign.left,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Image.network(
            'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-portrait-176256935.jpg'),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Icon(
                MyFlutterApp.thumbs_up,
                size: 14,
              ),
              Text(
                '165',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              Text(
                '19 comments',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Icon(
                Icons.circle,
                size: 10,
              ),
              Text(
                '3 shares',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              )
            ],
          ),
        ),
      ]),
      Row(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
          flex: 1,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            label: const Text(
              'Live',
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            onPressed: () {},
            icon: const Icon(
              MyFlutterApp.thumbs_up,
              color: Colors.grey,
              size: 12,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            label: const Text(
              'Comment',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.comment,
              color: Colors.grey,
              size: 12,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            label: const Text(
              'Share',
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            onPressed: () {},
            icon: const Icon(
              MyFlutterApp.share,
              color: Colors.grey,
              size: 12,
            ),
          ),
        ),
      ]),
    ]));
  }
}
