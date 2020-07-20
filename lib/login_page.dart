import 'package:choowi/forget_password.dart';
import 'package:choowi/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginRoute extends StatefulWidget {
  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  TextEditingController textEditingController;

  final myEmailController = TextEditingController();
  final myPasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController = new TextEditingController(text: "Check-in to win!");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 1,
              ),
             Container(
                alignment: Alignment(100, -0.5),
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('choowi_logo.png'),
                )),
                // child: Image(image: AssetImage('choowi_logo.png'))
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Check-in to win!",
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Shop local to win prizes",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  /* boxShadow: [
                    BoxShadow(color: Colors.green, spreadRadius: 1),
                  ],*/
                ),
                width: MediaQuery.of(context).size.width / 1.59,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.59,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'Email Address',
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),
                    /*  Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                         // labelText: "password",
                         // icon: Icon(Icons.remove_red_eye),
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),*/
                    Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          //style: Theme.of(context).textTheme.body1,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            contentPadding: const EdgeInsets.fromLTRB(
                                12, 0, 0, 0), // 48 -> icon width
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.remove_red_eye, color: Colors.blue),
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            // Your codes...
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.59,
                height: 40,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.4),
                  ),
                  child: Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    // Within the `FirstRoute` widget
                    child: Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword()),
                      );
                    },
                  ),
                  MaterialButton(
                    // Within the `FirstRoute` widget
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(

                    child: RaisedButton(
                      color:  Colors.grey[850],
                      onPressed: _launchURL,
                      child: Text("Privacy Policy",style: TextStyle(color: Colors.blue),
                    ),

                  )
                  )],
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
