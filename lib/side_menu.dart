import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,10,10,10.0),
                    child: Container(
                      alignment: Alignment(100, -0.5),
                      width: MediaQuery.of(context).size.width/10,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('person.png'),
                          )),
                      // child: Image(image: AssetImage('choowi_logo.png'))
                    ),
                  ),
                  // Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text("Rob Mortimer",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),

            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.email), onPressed: () {  },),
                  ),
                  // Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Message",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),
            
            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5,10,10,10.0),
                    child: Container(
                      alignment: Alignment(100, -0.5),
                      width: MediaQuery.of(context).size.width/10,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('qr.png'),
                          )),
                      // child: Image(image: AssetImage('choowi_logo.png'))
                    ),
                  ),
                  // Spacer(flex: 1,),
                  Text("My Check-ins",style: TextStyle(fontSize: 16),),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),


            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.settings), onPressed: () {  },),
                  ),
                  // Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text("Settings",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.power_settings_new), onPressed: () {  },),
                  // Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text("Log Out",style: TextStyle(fontSize: 16),),
                  ),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),
            Container(

              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14.0,8,8,8),
                    child: Text("BUSINESS OPTION",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                  )
                  // Spacer(flex: 1,),

                ],
              ),
            ),


            Container(
              color: Colors.white,
              child: Card(
                child: Row(
                  children: <Widget>[
                    // Icon(Icons.person),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.perm_identity), onPressed: () {  },),
                    ),
                    // Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                      child: Text("User Stats",style: TextStyle(fontSize: 16),),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.chevron_right,color: Colors.blue,),
                    ),
                    //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Card(
                child: Row(
                  children: <Widget>[
                    // Icon(Icons.person),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.access_time), onPressed: () {  },),
                    ),
                    // Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                      child: Text("Traffic Stats",style: TextStyle(fontSize: 16),),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.chevron_right,color: Colors.blue,),
                    ),
                    //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Card(
                child: Row(
                  children: <Widget>[
                    // Icon(Icons.person),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.format_list_numbered), onPressed: () {  },),
                    ),
                    // Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,0,0,0),
                      child: Text("My Listings",style: TextStyle(fontSize: 16),),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.chevron_right,color: Colors.blue,),
                    ),
                    //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                  ],
                ),
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  // Icon(Icons.person),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.add_circle_outline), onPressed: () {  },),
                  // Spacer(flex: 1,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text("Create Listing",style: TextStyle(fontSize: 15),),
                  ),
                  Spacer(flex: 2,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.chevron_right,color: Colors.blue,),
                  ),
                  //Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
