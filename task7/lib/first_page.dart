import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task7/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: RenderErrorBox.backgroundColor,
          leading: Icon(
            Icons.menu,
          ),
          title: Center(
            child: Text('Task 7'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notification_important,
              ),
                  onPressed: () {
                      print('notification clicked');
                  },
            ),
        ],
        ),
        body: ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(15.0),
      children: [
        Row(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/09/07/21/34/child-438373_960_720.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(16),
              child: Text(
                'My Name',
                style: TextStyle(
                  fontSize: 22.5,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ],
    ),
    );
  }
}
