import 'package:flutter/material.dart';
import 'page1.dart' deferred as page1;

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: page1.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return page1.Page1();
      },
    );
  }
}
