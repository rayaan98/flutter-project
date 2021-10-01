// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Traits extends StatelessWidget {
  const Traits(
      {Key? key, required this.name, this.url = "", required this.color})
      : super(key: key);

  final String name;
  final String url;
  final Color color;
  final double imageHeight = 350.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: color,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: url != ""
              ? Image.network(
                  url,
                  height: imageHeight,
                )
              : Placeholder(
                  fallbackHeight: imageHeight,
                ),
        ),
        Text(
          name,
          textScaleFactor: 2,
        )
      ]),
    );
  }
}
