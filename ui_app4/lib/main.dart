import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //fontFamily: 'Quicksand',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Container(
                height: 800.0,
                child: Stack(
                  children: <Widget>[
                    CustomMadeClipper(),
                    Positioned(
                      top: 25,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  iconSize: 24,
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  width: 70.0,
                                ),
                                Text(
                                  "My Saving ",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.90,
                              decoration: BoxDecoration(
                                  color: Colors.white54,
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Padding(
                                padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "INR 20,000.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Acccount details 7861-890-123",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, color: Colors.white),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Interest Rate",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "6.5% ",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "your interest",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "INR 150,000",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 50.0,
                                          child: Image.asset(
                                            "assets/piggy-bank.png",
                                          ),
                                        ),
                                        Text(
                                          "Add Fund",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 50.0,
                                          child: Image.asset(
                                            "assets/withdrawal.png",
                                          ),
                                        ),
                                        Text(
                                          "Withdrawal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 50.0,
                                          child: Image.asset(
                                            "assets/up.png",
                                          ),
                                        ),
                                        Text(
                                          "Top Up",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                ),
                                Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "My Goals",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          width:
                                          MediaQuery.of(context).size.width * 0.8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                              border: Border.all(
                                                  width: 3,
                                                  color: Colors.green,
                                                  style: BorderStyle.solid)),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25.0),
                                            child: Image.asset(
                                              "assets/paris.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Paris Trip",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Let's save for family trip 2021",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "My Goals",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          width:
                                          MediaQuery.of(context).size.width * 0.8,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                              border: Border.all(
                                                  width: 3,
                                                  color: Colors.green,
                                                  style: BorderStyle.solid)),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(25.0),
                                            child: Image.asset(
                                              "assets/buliding.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Canada Trip",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Let's save for family trip 2019",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.0,
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05,),
              child: MaterialButton(
                onPressed: () {},
                height: 50,
                minWidth: MediaQuery.of(context).size.width * 0.90,
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "INR 10,00,0000",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomMadeClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                30.0,
              ),
              bottomRight: Radius.circular(30.0)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(150, 127, 239, 1.0),
                Color.fromRGBO(133, 120, 236, 1.0)
              ])),
    );
  }
}

class CustomBlueClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80.0);
    var firstControlPoint = Offset(size.width * 0.02, size.height - 40);
    var firstEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = Offset(size.width * 0.98, size.height - 40);
    var secondEndPoint = Offset(size.width, size.height - 40.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(0.0, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
