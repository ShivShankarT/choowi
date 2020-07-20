import 'package:flutter/material.dart';
class SearchRoute extends StatefulWidget {
  @override
  _SearchRouteState createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  bottomNavigationBar: BottomAppBar(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.dehaze,size: 30,), onPressed: () {

                          },),
                          IconButton(icon: Icon(Icons.search,size: 30,), onPressed: () {  },),
                          IconButton(icon: Icon(Icons.person,size: 30,), onPressed: () {  },),
                          ImageIcon(


                           AssetImage('qrr.png',)
                          ),
                          ImageIcon(
                              AssetImage('trophy.png'),

                          ),


                        ],
                      ),
                      height: MediaQuery.of(context).size.width / 7,
                    ),
            color: Colors.greenAccent,
          ),
    );
  }
}
