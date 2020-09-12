import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:login_register_mahasiswa/data/model/Mahasiswa.dart';
import 'package:login_register_mahasiswa/ui/PageLogin.dart';
import 'package:login_register_mahasiswa/utils/ViewUtils.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  final _keyForm = GlobalKey<FormState>();

  Mahasiswa mahasiswa = new Mahasiswa();

  submitDataLogin() async {
    print(mahasiswa.email);

    final responseData = await http
        .post("http://192.168.43.46/mahasiswaFlutter/register.php", body: {
      "email": mahasiswa.email,
      "password": mahasiswa.password,
      "name": mahasiswa.nama,
      "alamat": mahasiswa.alamat,
    });

    final data = jsonDecode(responseData.body);
    int value = data['value'];

    if (value == 1) {
      ViewUtils().showToast("Berhasil Register ");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PageLogin()));
    } else {
      ViewUtils().showToast("Email telah digunakan");
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
      backgroundColor: Colors.blueGrey,
      body: Form(
        key: _keyForm,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "REGISTER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                    color: Colors.white),
              ),
              TextFormField(
                  onSaved: (value) => mahasiswa.nama = value,
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.white),
                  )),
              TextFormField(
                onSaved: (value) => mahasiswa.email = value,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              TextFormField(
                  onSaved: (value) => mahasiswa.password = value,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                  )),
              TextFormField(
                  onSaved: (value) => mahasiswa.alamat = value,
                  decoration: InputDecoration(
                    hintText: "Alamat",
                    hintStyle: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      print("REGISTER Clicked");
                      checkForm();
                    },
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  print("Login clicked");
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
