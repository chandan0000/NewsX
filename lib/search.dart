import 'dart:math';

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var city_name = ['mubbai', 'chandigrah', 'duniya'];
    final _random = new Random();
    var city = city_name[_random.nextInt(city_name.length)];
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                //seacrh wala container
                // color: Colors.grey,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          child: Icon(Icons.search),
                          margin: EdgeInsets.fromLTRB(2, 0, 5, 0)),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Any $city Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
