import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Color(0xfffdd148),
                ),
                Positioned(
                  bottom: 50,
                  right: 100,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color:  Color(0xfffee16d).withOpacity(0.4)
                    ),
                  ),
                ),
              Positioned(
                bottom: 50,
                left: 150,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color(0xfffee16d).withOpacity(.4)
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
