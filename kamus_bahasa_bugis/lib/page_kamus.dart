import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'generated/json/kamus_response_entity_helper.dart';
import 'response/kamus_response_entity.dart';

class PageKamusBugis extends StatefulWidget {
  @override
  _PageKamusBugisState createState() => _PageKamusBugisState();
}

class _PageKamusBugisState extends State<PageKamusBugis> {
  bool isLoading = true;
  List<KamusResponseData> listKata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kamus Bahasa Indonesia - Bugis"),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: listKata.length,
              itemBuilder: (BuildContext context, int index) {
                var kata = listKata[index];
                return ListTile(
                  title: Text(kata.indonesia),
                  subtitle: Text(kata.bugis),
                );
              },
            ),
    );
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    // setState(() {
    //   isLoading = true;
    // });
    KamusResponseEntity response = new KamusResponseEntity();

    final responseData =
        await http.get("http://192.168.43.46/kamusFlutter/getData.php");
    final data = jsonDecode(responseData.body);
    kamusResponseEntityFromJson(response, data);

    print("data1" + data.toString());

    if (response.isSuccess) {
      setState(() {
        isLoading = false;

        listKata = response.data;
        print(data);
      });
    }
  }
}
