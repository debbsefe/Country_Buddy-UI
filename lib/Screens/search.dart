// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchPage extends StatelessWidget {
  const MySearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          sliver: SliverAppBar(
            pinned: true,
            floating: true,
            leading: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(left: 15, right: 15),
          sliver: SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: ("search countries, continent"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 1),
                          gapPadding: 5.0),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Most Searched Countries",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color.fromRGBO(98, 88, 72, 10))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                          scrollItem(),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Text(
                      "Recent Searches",
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color.fromRGBO(98, 88, 72, 10))),
                    ),
                  ]),
                  listtile("Nigeria"),
                  listtile("China")
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

Widget scrollItem() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://i.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI",
            height: 90,
            width: 90,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Row(
        children: [
          Text('Nigeria',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color.fromRGBO(98, 88, 72, 10)))),
        ],
      )
    ],
  );
}

Widget listtile(String countries) {
  return ListTile(
    leading: Icon(Icons.refresh),
    title: Text(
      countries,
      style: GoogleFonts.nunito(
          textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromRGBO(98, 88, 72, 10))),
    ),
    trailing: Icon(Icons.arrow_upward),
  );
}
