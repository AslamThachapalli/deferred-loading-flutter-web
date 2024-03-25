import 'package:flutter/material.dart';
import 'page2.dart' deferred as page2;

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: page2.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return page2.Page2();
      },
    );
  }
}
