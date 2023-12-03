import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'App Logo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Item 1',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: const Text(
                'Item 2',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: const Text(
                'Item 3',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 3 tap
              },
            ),
          ],
        ),
      ),
    );
  }
}