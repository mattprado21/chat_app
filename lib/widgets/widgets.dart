import 'package:flutter/material.dart';
import 'package:chatApp/views/sign_up.dart';

@override
Widget mainAppBar(BuildContext context) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Chat',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.grey[300]
          )
        ),
        Text(
          'App',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white
          )
        )
      ]
    ),
    backgroundColor: Colors.blue[800],
    elevation: 0.0,
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.grey[300]
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey[300]
      )
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey[300]
      )
    )
  );
}

TextStyle commonTextStyle() {
  return TextStyle(
    fontSize: 16.0,
    color: Colors.white
  );
}

Widget createAccountLabel() {
  return InkWell(
    // onTap: () {
    //   Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => SignUp()));
    // },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Register',
            style: TextStyle(
                color: Color(0xfff79c4f),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}

Widget alreadyHaveAccountLabel() {
  return InkWell(
    // onTap: () {
    //   Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => SignUp()));
    // },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Sign In',
            style: TextStyle(
                color: Color(0xfff79c4f),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}