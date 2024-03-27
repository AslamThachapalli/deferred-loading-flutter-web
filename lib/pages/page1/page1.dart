import 'package:defer_load_web/pages/page1/sub_pages/heavy_page.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 1"),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HeavyPage(),
                  ),
                );
              },
              child: Text('Go to Heavy Page'),
            ),
          ],
        ),
      ),
    );
  }
}
