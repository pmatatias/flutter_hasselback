import 'package:flutter/material.dart';
import 'package:flutter_hasselback/ovo/screen.dart';
import 'package:flutter_hasselback/wawter/screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Futter Hasselback",
            style: TextStyle(color: Colors.white)),
        elevation: 4,
      ),
      body: ListView(
        children: const <Widget>[
          TileOn(screen: OvoView(), title: "OVO Loading Animation"),
          TileOn(screen: WawterView(), title: "WaWter Animation"),
        ],
      ),
    );
  }
}

class TileOn extends StatelessWidget {
  const TileOn({super.key, required this.screen, required this.title});
  final Widget screen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => screen,
            )),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
