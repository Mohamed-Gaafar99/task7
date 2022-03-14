import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ButtonsTypes.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset('assets/pic1.jpeg'),
              ),
              const ListTile(
                title: Text(
                  'Mohamed Gaafar',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                subtitle: Text(
                'My Name, Student'
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: const Text('Second page'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'widget tree 1'),
              Tab(text: 'widget tree 2'),
              Tab(text: 'widget tree 3'),
            ],
          ),
        ),
        body: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/pic2.jpg'),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ButtonsTypes()),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.orange,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}