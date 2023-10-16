import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const String id = 'Detail_Page';

  final String input;
  DetailPage(this.input);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pop({'data': 'Hello PDP'});
          //
        },
        color: Colors.lightGreenAccent,
        child: Text(
          widget.input,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    ));
  }
}
