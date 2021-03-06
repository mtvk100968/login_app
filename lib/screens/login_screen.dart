import 'package:flutter/material.dart';

//import 'login_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

    final GlobalKey<FormState> _formKey = GlobalKey();
    void _submit(){

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
            actions: <Widget>[
              FlatButton(
                  child: Row(
                    children: <Widget>[
                      Text('Signup'),
                      Icon(Icons.person_add)
                    ],
                  ),
                textColor: Colors.white,
                onPressed: (){
                    Navigator.of(context).pushReplacementNamed(SignupScreen.routeName);
               },
              )
            ],
        ),
       body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.lightGreenAccent,
                      Colors.blue,
                    ]
                )
            ),
          ),
          Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height: 260,
                width: 300,
                padding: EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        //email
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                          {
                            if(value!.isEmpty || value.contains('@'))
                            {
                              return 'invalid email';
                            }
                            return null;
                          },

                        ),

                        //password
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          validator: (value)
                          {
                            if(value!.isEmpty || value.length<=5)
                            {
                              return 'invalid password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(
                          child: const Text(
                              'Submit'
                          ),
                          onPressed: ()
                          {
                            _submit();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}