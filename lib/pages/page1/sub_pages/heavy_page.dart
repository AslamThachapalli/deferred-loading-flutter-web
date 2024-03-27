import 'package:flutter/material.dart';

class HeavyPage extends StatelessWidget {
  final int itemCount = 10000;

  const HeavyPage({
    super.key,
  }); // Change the number of items to increase compilation time

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            subtitle: Text('This is a heavy widget'),
            leading: Icon(Icons.android),
            trailing: Icon(Icons.keyboard_arrow_right),
          );
        },
      ),
    );
  }
}
