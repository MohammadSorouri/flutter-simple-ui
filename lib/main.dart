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
                bottom: 80,
                left: 230,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color(0xfffee16d).withOpacity(.4)
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15,left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/chris.jpg"),),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2
                              )
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.menu,color: Colors.white,size: 30.2,),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50,left: 15),
                    child: Text("Hello, Mohammad",style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15,left: 15),
                    child: Text("What do you want to buy?",style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25,left: 15,right: 15),
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      elevation: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Color(0xffFEDF62),size: 30,),
                          hintText: "Search",
                          contentPadding: EdgeInsets.only(left: 15,top: 15),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Quicksand",
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ),


            ],
          )
        ],
      ),
    );
  }
}
