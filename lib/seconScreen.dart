import 'package:flutter/material.dart';
import 'main.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text('Create post'),
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        height: 30,
                        width: 60,
                        child: TextButton(
                          child: Text("post".toUpperCase(),
                              style: TextStyle(fontSize: 14)),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ))),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 24,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-portrait-176256935.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Row(
                            children: [
                              FlatButton(
                                minWidth: 50,
                                height: 30,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey,
                                        width: 1,
                                        style: BorderStyle.solid),
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {},
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.lock,
                                        color: Colors.grey,
                                        size: 10,
                                      ),
                                      Text(
                                        'Only me',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Colors.grey,
                                        size: 10,
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: FlatButton(
                                  minWidth: 50,
                                  height: 30,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.grey,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {},
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.grey,
                                          size: 10,
                                        ),
                                        Text(
                                          'Album',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.grey,
                                          size: 10,
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.0),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 6,
                  keyboardType: TextInputType.multiline,
                  decoration: new InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.only(left: 4, bottom: 8, top: 8, right: 4),
                      hintText: "What's on your mind"),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.image)),
              Image.network(
                  'https://i.insider.com/5484d9d1eab8ea3017b17e29?width=600&format=jpeg&auto=webp')
            ],
          ),
        ),
      ),
    );
  }
}
