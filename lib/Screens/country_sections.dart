// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCountrySectionPage extends StatelessWidget {
  const MyCountrySectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(left: 0, right: 0),
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
                  Row(
                    children: [
                      Text("African Countries",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color.fromRGBO(98, 88, 72, 10)))),
                      Icon(
                        Icons.circle_notifications_sharp,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
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
                    ],
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Sort: Alphabetical order",
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromRGBO(98, 88, 72, 10))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10.0,
            crossAxisCount: 1,
            children: List.generate(6, (index) {
              // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
              return Container(
                //padding: EdgeInsets.all(8),
                height: 222,
                width: 183,
                child: Card(
                    child: Column(children: [
                  // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network("https://robohash.org/$index"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        children: [
                          Text(
                            "Africa",
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color.fromRGBO(98, 88, 72, 10))),
                          ),
                          Text(
                            "Africa is the second largest continent in the world",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color.fromRGBO(98, 88, 72, 10))),
                          ),
                        ],
                      ))
                ])),
              );
            }),
          ),
        ),
      ],
    ));
  }
}

Widget profilePage() {
  return Container(
      width: 25.0,
      height: 25.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://i.imgur.com/BoN9kdC.png"))));
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
