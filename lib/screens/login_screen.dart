import 'dart:developer';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  void submit() {
    log(_email);
    log(_password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'email',
                    hintText: 'mahr.bwb@gmail.com',
                  ),
                  onSaved: (value) {
                    value = _email;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: '8923789hk',
                  ),
                  onSaved: (value) {
                    value = _password;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      _formKey.currentState!.save();
                      this.submit();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
