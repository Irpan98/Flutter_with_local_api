import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_register_mahasiswa/data/model/mahasiswa_login_entity.dart';
import 'package:login_register_mahasiswa/utils/ViewUtils.dart';

import 'PageRegister.dart';
import 'Pagehome.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  final _keyForm = GlobalKey<FormState>();

  String email, pass;

  submitDataLogin() async {
    final responseData = await http.post(
        "http://192.168.43.46/mahasiswaFlutter/login.php",
        body: {"email": email, "password": pass});

    final data = jsonDecode(responseData.body);
    int value = data['value'];

    var mahasiswa = MahasiswaLoginEntity().fromJson(data);

    if (value == 1) {
      ViewUtils().showToast("Berhasil Login");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PageHome(mahasiswa)));
    } else {
      ViewUtils().showToast("Password atau Username Salah");
    }
  }

  checkForm() {
    final form = _keyForm.currentState;
    if (form.validate()) {
      form.save();
      submitDataLogin();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      backgroundColor: Colors.blueGrey,
      body: Form(
        key: _keyForm,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: Colors.white),
              ),
              TextFormField(
                  onSaved: (value) => email = value,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white),
                  )),
              TextFormField(
                onSaved: (value) => pass = value,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      print("Login Clicked");

                      setState(() {
                        checkForm();
                      });
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("register clicked");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageRegister()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
