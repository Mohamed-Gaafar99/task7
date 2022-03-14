import 'package:flutter/material.dart';

class ButtonsTypes extends StatelessWidget {
  const ButtonsTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons types'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'TextButton',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ElevatedButton',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              onPressed: () {},
              child: Text(
                'OutlineButton',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {},
              child: const Text(
                'FlatButton',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('RaisedButton'),
            ),
            SizedBox(
              height: 20.0,
            ),
            OutlineButton(
              onPressed: () {},
              child: const Text(
                  'OutlineButton'
              ),
              ),
            SizedBox(
              height: 20.0,
            ),
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlatButton(
                  onPressed: (){},
                  child: Text('ButtonBar'),
                  color: Colors.teal,),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 40,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text(
                'FAB',
                style: TextStyle(
                  fontSize:25.0,
                  color: Colors.greenAccent,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
