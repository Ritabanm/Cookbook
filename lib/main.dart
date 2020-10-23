import 'package:flutter/material.dart';
import 'package:cookbook/topDish.dart';
import 'package:cookbook/one.dart';
import 'package:cookbook/two.dart';
import 'package:cookbook/three.dart';
import 'package:cookbook/four.dart';
import 'package:cookbook/five.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto'),
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Cookbook',
                      style: TextStyle(color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                    Text(
                      'Discover New Dishes',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "Search what you're looking for",
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      'Popular Cuisines',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      height: 200,
                      child: ListView(

                        scrollDirection: Axis.horizontal,

                        children: <Widget>[

                          promoCard('assets/images/one.png'),
                          promoCard('assets/images/three.png'),
                          promoCard('assets/images/two.jpg'),
                          promoCard('assets/images/four.png'),
                          promoCard('assets/images/five.png'),

                          //Add new cuisines promoCard('assets/images/six.png')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                GestureDetector(
                  onTap: () {
                    print("Tapped a Container");
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => topDish()));
                  },

                    child:Container(

                      height: 150,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),

                        image: DecorationImage(
                            fit: BoxFit.cover,

                            image: AssetImage('assets/images/three.jpg')),
                      ),

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [
                                0.3,
                                0.9
                              ],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]),
                        ),

                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Top Dishes',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    )
                ), ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),

        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    );
  }
}
