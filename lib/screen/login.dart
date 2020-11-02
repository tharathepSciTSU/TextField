import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String title;

  const Login({Key key, this.title}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: '**Username**',
                    hintText: 'Enter Username',
                    filled: true,
                    fillColor: Colors.blue[50],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue[800],
                    ))),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: '**Password**',
                    hintText: 'Enter Password',
                    filled: true,
                    fillColor: Colors.blue[50],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue[800],
                    ))),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),
            RaisedButton(
              onPressed: () {
                validateTextField(context);
              },
              child: Text('SUBMIT'),
              color: Colors.blue[500],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(user);
  }
}
