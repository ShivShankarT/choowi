import 'package:choowi/forget_password.dart';
import 'package:choowi/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController textEditingController;

  final myEmailController=TextEditingController();
  final myPasswordController=TextEditingController();

  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["InduceSmile.com", "Flutter.io", "google.com"];

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
              SizedBox(height: 20,),
              Text(
                "Check-in to win!",
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
              Text(
                "Shop local to win prizes",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height: 20,),

              Container(

                width: MediaQuery.of(context).size.width/1.59,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.59,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          hintText: 'First Name',
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.59,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),

                          hintText: 'Last Name',
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),
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
                  Container(
                    child:  Stack(
                      alignment: Alignment.centerRight,
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          //style: Theme.of(context).textTheme.body1,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password' ,
                            contentPadding: const EdgeInsets.fromLTRB(12, 0, 0, 0), // 48 -> icon width
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
                  ),
                    Container(
                      child:  Stack(
                        alignment: Alignment.centerRight,
                        children: <Widget>[
                          TextField(
                            keyboardType: TextInputType.text,
                            //style: Theme.of(context).textTheme.body1,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Re-type Password',
                              contentPadding: const EdgeInsets.fromLTRB(12, 0, 0, 0), // 48 -> icon width
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
                    ),
                 /*   Container(
                      width: MediaQuery.of(context).size.width / 1.59,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),*/
                   /* Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Re-type Password',
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Colors.white,
                        ),
                        obscureText: false,
                      ),
                    ),*/

                  ],
                ),
              ),

             Container(
               width: MediaQuery.of(context).size.width / 1.59,

               child:  CheckboxListTile(
                 dense: true,
                 title: Text("I am at least 17 years old.",style: TextStyle(color: Colors.white),),
                 value: true,
                 onChanged: (newValue) {
                   setState(() {
                   });
                 },
                 controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
               ),
             ),

              Container(
                width: MediaQuery.of(context).size.width/1.59,
                height: 40,
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text("Register",style: TextStyle(color: Colors.white),),),

              ),
              SizedBox(height: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    // Within the `FirstRoute` widget
                    child: Text("Forgot Password",style: TextStyle(fontSize: 10 ,color: Colors.white),),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPassword()),
                      );
                    },
                  ),
                  MaterialButton(
                    // Within the `FirstRoute` widget
                    child: Text("Already user",style: TextStyle(fontSize: 11 ,color: Colors.white),),
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginRoute()),
                      );
                    },
                  ),

                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
