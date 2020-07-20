import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text("Message"),
                  // leading: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.email),
                  subtitle: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('1625 Main Street',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      Icon(Icons.arrow_forward_ios),
                      Icon(
                        Icons.email,
                        color: Colors.blue[500],
                      ),
                    ],
                  ),

                  Divider(),

                ],
              )
            ]),
      ),
    );
  }
}
