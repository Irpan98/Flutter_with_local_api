import 'dart:convert';
import 'dart:developer';

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
  bool isSearch = false;
  List<KamusResponseData> listKata;
  List<KamusResponseData> filterList;

  var etSearce = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    etSearce.addListener(() {
      if (etSearce.text.isEmpty) {
        setState(() {
          isSearch = false;
        });
      } else {
        setState(() {
          isSearch = true;
        });
      }
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Kamus Bahasa Indonesia - Bugis"),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  _SearchView(),
                  !isSearch
                      ? _createListView(listKata)
                      : _createListView(_performSearch()),
                ],
              ));
  }

  Widget _createListView(List<KamusResponseData> listKata) {
    log('_createListView: called $listKata');

    return Flexible(
      child: ListView.builder(
          itemCount: listKata.length,
          itemBuilder: (BuildContext context, int index) {
            var kata = listKata[index];
            return ListTile(
              title: Text(kata.indonesia),
              subtitle: Text(kata.bugis),
            );
          }),
    );
  }

  Widget _SearchView() {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1.0)),
      child: TextField(
        controller: etSearce,
        decoration: InputDecoration(
          hintText: "Cari Kata",
        ),
      ),
    );
  }

  List<KamusResponseData> _performSearch() {
    filterList = new List<KamusResponseData>();
    for (int i = 0; i < listKata.length; i++) {
      var item = listKata[i];
      if (item.indonesia.toLowerCase().contains(etSearce.text)) {
        filterList.add(item);
      }
    }
    return filterList;
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
