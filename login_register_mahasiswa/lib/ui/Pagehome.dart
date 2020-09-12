import 'package:flutter/material.dart';
import 'package:login_register_mahasiswa/data/model/mahasiswa_login_entity.dart';

class PageHome extends StatefulWidget {
  MahasiswaLoginEntity mahasiswa;

  PageHome(this.mahasiswa);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Selamat Datang", style: TextStyle(fontSize: 14)),
            Icon(
              Icons.supervised_user_circle,
              size: 100,
            ),
            Text(
              widget.mahasiswa.nama,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.red,
              child: Text("Log Out"),
            )
          ],
        )),
      ),
    );
  }
}
