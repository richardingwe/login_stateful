import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (!value.contains('@') || value == null || value.isEmpty) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',
      ),
      validator: (value) {
        if (value.length < 4 || value == null || value.isEmpty) {
          return 'Password must be atleast 4 characters';
        }
        return null;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        _formKey.currentState.validate();
        // if (_formKey.currentState.validate()) {
        //   // If the form is valid, display a snackbar. In the real world,
        //   // you'd often call a server or save the information in a database.
        //   ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(content: Text('Processing Data')),
        //   );
        // }
      },
      child: Text('Submit!'),
    );
  }
}
