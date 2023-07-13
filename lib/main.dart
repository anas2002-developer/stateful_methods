import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: initialPage(),
  ));
}

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter = 1;

  @override
  void initState() {
    super.initState();

    print("init called");
  }

  @override
  void dispose() {
    super.dispose();

    print("dispose called");
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);

    print("setstate called");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
              setState(() { 
                counter++;
              });
            }),
            Text("$counter"),
          ],
        ),
      ),
    );
  }
}

class initialPage extends StatefulWidget {
  const initialPage({super.key});

  @override
  State<initialPage> createState() => _initialPageState();
}

class _initialPageState extends State<initialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
            },
              child: Icon(CupertinoIcons.home)),
      ),
    );
  }
}

