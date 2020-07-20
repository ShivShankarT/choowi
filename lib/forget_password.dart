import 'package:choowi/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              Container(
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
                width: MediaQuery.of(context).size.width / 1.59,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'Email Address',
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
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
                  child: Text("Send",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    // Within the `FirstRoute` widget
                    child: Text("Back",style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginRoute()),
                      );
                    },
                  ),

                ],
              ),

              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
