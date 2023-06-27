import 'package:flutter/material.dart';
import 'package:flutter_hasselback/ovo/screen.dart';

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
        children: <Widget>[
          ListTile(
            tileColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("OVO Loader Animation"),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OvoView(),
                )),
            trailing: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
