import 'package:flutter/material.dart';
import 'package:chatApp/widgets/widgets.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  TextEditingController usernameEditingController = new TextEditingController();

  // validate function on click sign up
  onSignUp() {
    if (_formKey.currentState.validate()) {

    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: mainAppBar(context),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget> [
            Form(
              key:_formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your username';
                      } else if (value.length < 6) {
                        return 'User name must have at least 6 characters';
                      }
                      return null;
                    },
                    controller: usernameEditingController,
                    style: commonTextStyle(),
                    decoration: textFieldInputDecoration("Username")
                  ),
                  TextFormField(
                    validator: (value) {
                      final bool isValid = EmailValidator.validate(value);
                      if (!isValid) {
                        return 'Please enter a correct email address';
                      }
                      return null;
                    },
                    controller: emailEditingController,
                    style: commonTextStyle(),
                    decoration: textFieldInputDecoration("Email")
                  ),
                  TextFormField(
                    controller: passwordEditingController,
                    style: commonTextStyle(),
                    decoration: textFieldInputDecoration("Password")
                  ),
                ],
              )
            ),
            SizedBox(height: 8.0),
            // Container (
            //   alignment: Alignment.centerRight,
            //   child:  Container(
            //     child: Text(
            //       'Forgot Password?',
            //       style: commonTextStyle()
            //     )
            //   ),
            // ),
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {
                onSignUp();
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(2, 4),
                          blurRadius: 5,
                          spreadRadius: 2)
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xfffbb448), Color(0xfff7892b)])),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ),
                  Text('or'),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)]
                )
              ),
              child: Text(
                'Sign Up with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: height * .055),
            alreadyHaveAccountLabel()
          ]
        )
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}