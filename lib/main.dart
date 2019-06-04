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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

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
                bottom: 100.0,
                left: 150.0,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color(0xfffee16d).withOpacity(.5)
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
          ),
          SizedBox(height: 10,),
          Stack(
            children: <Widget>[
              SizedBox(height: 10,),
              Material(
                elevation: 1,
                child: Container(
                  height: 75,
                  color: Colors.white,
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width/4,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/sofas.png"))
                          ),
                        ),
                        Text("Sofas",style: TextStyle(fontFamily: "Quicksand"),)
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width/4,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/wardrobe.png"))
                          ),
                        ),
                        Text("Wardrobe",style: TextStyle(fontFamily: "Quicksand"),)
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width/4,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/desks.png"))
                          ),
                        ),
                        Text("Desks",style: TextStyle(fontFamily: "Quicksand"),)
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width/4,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/dressers.png"))
                          ),
                        ),
                        Text("Dressers",style: TextStyle(fontFamily: "Quicksand"),)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          itemCard('FinnNavian', 'assets/ottoman.jpg', false),
          itemCard('FinnNavian', 'assets/anotherchair.jpg', true),
          itemCard('FinnNavian', 'assets/chair.jpg', true)
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),
      ),
    );
  }
}

Widget itemCard(String title,String img,bool isLick){
  return Padding(
    padding: EdgeInsets.only(left: 15,right: 15,top: 15),
    child: Container(
      height: 150,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(width: 10,),
          Container(
            width: 140,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img))
            ),
          ),
          SizedBox(width: 4,),
          Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Text(title,style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 77.4,),
                  Material(
                    elevation: isLick ? 0:2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(20),
                        color: isLick ? Colors.grey.withOpacity(.2):Colors.white,
                      ),
                      child: Center(
                        child: isLick?Icon(Icons.favorite_border):Icon(Icons.favorite,color: Colors.red,),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 5,),
              Container(
                width: 175,
                child: Text("Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black",textAlign: TextAlign.left,style: TextStyle(fontFamily: "Quicksand",color: Colors.grey,fontSize: 12),),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 77.4),
                  Container(
                    height: 40.0,
                    width: 50.0,
                    color: Color(0xffF9C335),
                    child: Center(
                      child: Text(
                        '\$248',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 100.0,
                    color: Color(0xffFEDD59),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}