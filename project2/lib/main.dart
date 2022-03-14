import 'dart:ui';

import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: Text(
            'This App!'
          ),
          actions: [
            IconButton(onPressed: (){print('Yes!');}, icon: Icon(Icons.notification_important),)
          ],
        ),
        body: Container(
                alignment: Alignment.center,
                color: Color(0xff1B6491),
                height: double.infinity,
          child: Image.,

          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text('First'),
          //     Text('second'),
          //     Text('Third'),
          //     Text('Fourth'),
          //   ],
          //
          // ),
        ),
        ),
      );
  }

}