import 'package:flutter/material.dart';
import 'package:flutter_first/custom/traits.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      appBar: AppBar(
        title: const Text('Berserk Fan Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: const [
          Traits(
              name: "",
              color: Colors.grey,
              url:
                  "https://steamuserimages-a.akamaihd.net/ugc/866240438028843474/ECB7677EF35946730053FD3AECD99C4AB7E76974/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true"),
          Traits(
              name: "Guts",
              color: Colors.grey,
              url:
                  "https://64.media.tumblr.com/7b23f70a78d0a920ac7d000294fc46bc/fe3cc922434bfbf5-3c/s1280x1920/54a8f5ebd5f27e7c2e9ba72483a7f47c7315261c.png"),
          Traits(
              name: "Casca",
              color: Colors.grey,
              url:
                  "https://64.media.tumblr.com/80b4b7621ea97b58c8c22094720134dc/tumblr_p0xpqhZAZZ1ws3szlo1_1280.jpg"),
          Traits(
              name: "Puck",
              color: Colors.grey,
              url:
                  "https://64.media.tumblr.com/c7cd762d00872dc395fdc58b3aea1401/7c2e578382db075d-0e/s250x250_c1/2aff6fcd5715c77035c42a51afa19323ba227fe9.jpg"),
          Traits(
              name: "Schierke",
              color: Colors.grey,
              url: "https://i.imgur.com/iVeVGU1.png"),
          Traits(
              name: "Farnese",
              color: Colors.grey,
              url:
                  "https://cdna.artstation.com/p/assets/images/images/034/384/958/large/tarren-stroud-farnese-fanart-berserk-tarren-stroud-manga.jpg?1612174860&dl=1"),
        ],
      ),
    );
  }
}
