import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark));
  return runApp(MyApp());
}

Color colorPink = Color.fromRGBO(217, 108, 157, 1.0);
Color colorPurple = Color.fromRGBO(132, 61, 179, 1.0);
Color colorDarkPurple = Color.fromRGBO(19, 2, 38, 1.0);
Color colorBlue = Color.fromRGBO(143, 146, 181, 1.0);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Column(
        //height:MediaQuery.of(context).size.height,
          children: <Widget>[
            TopPart(),
            PinkPart(),
            LightPurple(),
            DeepBlue(),
          ],
        ),
      );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      color: colorPink,
      child: Material(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.0),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('assets/images/1.jpg'),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "You",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.pink)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.trending_up,
                              size: 26.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text("TRENDING",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.0))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey[300])),
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Icon(Icons.favorite_border,
                                size: 26.0, color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "HEALTH",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0),
                        )
                      ],
                    ),
                  ])
            ],
          )),
    );
  }
}

class LightPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorDarkPurple,
      child: Material(
        color: colorPurple,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TODAY 5:30 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Practice French ,English And Chinese",
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/images/2.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                    ExactAssetImage('assets/images/3.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),

                     SizedBox(width: 10.0),
                      Text(
                        "Join Ryon, Bob &10 other",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class PinkPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorPurple,
      child: Material(
        color: colorPink,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TODAY 5:30 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Yoga and Meditation for Beginners",
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                  ExactAssetImage('assets/images/2.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                ExactAssetImage('assets/images/3.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10.0),
                      Text(
                        "Join Marie, John &10 other",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DeepBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorBlue,
      child: Material(
        color: colorDarkPurple,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "TODAY 8:30 PM",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Adobe XD Live Event in Europe",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                  ExactAssetImage('assets/images/2.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                ExactAssetImage('assets/images/3.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 12.0),
                      Text(
                        "Join Marian , Bob &10 others",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

