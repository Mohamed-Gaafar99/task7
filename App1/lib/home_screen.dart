import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First App',
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
          IconButton(
            icon: Text('hello'),
            onPressed: () {
              print('Helllooooo');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0,),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/06/05/07/58/butterfly-2373175_960_720.png'
                      ),
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: 200.0,
                      color: Colors.black.withOpacity(0.65),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'Butterfly',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
