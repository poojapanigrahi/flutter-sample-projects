import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color mainColor = Color.fromRGBO(53, 71, 182, 1.0);
Color mainOpac = Color.fromRGBO(92, 94, 190, 1.0);
void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  return runApp(MyApp());
}

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
      body: Column(
        children: <Widget>[
          TopPart(),
          SizedBox(
            height: 30.0,
          ),
          BottomPart(),
        ],
      ),
      backgroundColor: mainColor,
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 45.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 1.0,
                      top: 4.0,
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white30,
                        ),
                        child: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 27.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "My Account",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/1.jpg',
                      height: 30.0,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 18.0,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.white30,
                    fontSize: 18.0),
              ),
              Expanded(
                  child: SizedBox(
                width: 5.0,
              )),
              Text(
                "\$ 423.34",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white30,
                    fontSize: 18.0),
              ),
              SizedBox(
                width: 5.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white12,
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
              SizedBox(
                width: 18.0,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          VisaCard(),
        ],
      ),
    );
  }
}

class VisaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Material(
        borderRadius: BorderRadius.circular(12.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Image.asset(
                  'assets/card.jpg',
                  height: 24,
                ),
                Expanded(
                    child: SizedBox(
                  width: 5.0,
                )),
                Image.asset(
                  'assets/visa2.png',
                  height: 35,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Pooja Panigrahi",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Card Holder",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  "**** **** **** 5213",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 418.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(243, 243, 243, 0.95),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: 150,
                  height: 80.0,
                  child: Material(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: mainColor,
                              ),
                            ),
                            Text(
                              "Income",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$ 1,243,34",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 34.0,
                            ),
                            Container(
                              height: 2.0,
                              width: 35.0,
                              color: mainColor,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Container(
                  width: 150,
                  height: 80.0,
                  child: Material(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Expences",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$ 800,34",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 34.0,
                            ),
                            Container(
                              height: 2.0,
                              width: 35.0,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.91,
              height: 100.0,
              child: Material(
                child: Row(
                  children: <Widget>[
                    Text(
                      "Send Money to",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration:
                          BoxDecoration(color: mainColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Add recipient",
                      style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Transactions",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                ),
              ],
            ),
            Container(
              height: 120,
              child: Material(
                child:ListView(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width:18.0,
                            ),
                            Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.deepPurpleAccent[100]
                              ),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            SizedBox(
                              width:12.0,
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Westren",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  "Today 12:30",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  " +123",
                                  style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],)
                          ],
                        ),
                        SizedBox(
                          height:15.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width:18.0,
                            ),
                            Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.deepPurpleAccent[100]
                              ),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            SizedBox(
                              width:12.0,
                            ),
                            Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Westren",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  "Today 12:30",
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  " +123",
                                  style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],)
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
