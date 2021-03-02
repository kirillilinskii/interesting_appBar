import 'package:flutter/material.dart';
import 'this_appbar.dart';
import 'screen.dart';

void main() {
  runApp(MyApp());
}

bool signOfAppbar = false;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _onpressed() {
    setState(() {
      (signOfAppbar == true) ? signOfAppbar = false : signOfAppbar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: ThisAppBar(
            signOfAppbar,
            _onpressed,
          ),
        ),
        body: (signOfAppbar) ? ScreenChanges() : null,
      ),
    );
  }
}
