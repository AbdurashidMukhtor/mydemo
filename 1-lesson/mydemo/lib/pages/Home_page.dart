import 'package:flutter/material.dart';
import 'package:mydemo/pages/Detail_Page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'Home_Page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String valueKey = "";
  //this function navigator data
  Future _openDetail() async {
    Map results = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailPage("Back Button");
    }));

    if (results != null && results.containsKey('data')) {
      setState(() {
        valueKey = results['data'];
      });
      print('data');
    } else {
      print('Nothing');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
            onPressed: () {
              _openDetail();
//Navigator.pushReplacementNamed(context, LoginPage.id);
            },
            color: Color.fromARGB(255, 98, 154, 43),
            child: Text(
              'Next Page :  $valueKey',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
