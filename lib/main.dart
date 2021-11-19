import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Use 'st' then TAB to get some really useful snippets for widgets
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This 'build' method is called whenever Flutter needs to rebuild the UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Flutter Training!'),
        ),
        drawer: const Drawer(
          child: Text('Hi'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.leaderboard),
            Icon(Icons.person),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business_center), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
        ),
      ),
    );
  }
}
