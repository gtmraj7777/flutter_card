import 'package:flutter/material.dart';


class TestFile extends StatefulWidget {
  const TestFile({Key? key}) : super(key: key);

  @override
  _TestFileState createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Image.asset('assets/images/momos.jpg'),
        ),
      ),
    );
  }
}
