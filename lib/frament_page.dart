import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FragmentPage extends StatefulWidget {
  final Map param;

  FragmentPage(this.param);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FragmentPageSate();
  }
}

class _FragmentPageSate extends State<FragmentPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'FlutterView',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
