import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:smart_home/design.dart';
import 'package:smart_home/jana_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MySmartHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySmartHome extends StatelessWidget {
  final Design design;

  const MySmartHome({Key key, this.design}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe6ebf2),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).viewPadding.top + 10,
              ),
              Text(
                "MyHome",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "nunito",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 280,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xFFDCE7F1),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 2.0,
                                  color: Colors.white.withOpacity(.7)),
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: Color(0xFFe6ebf2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(-3, -3),
                                          color: Colors.lightBlueAccent
                                              .withOpacity(.1)),
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(3, 3),
                                          color:
                                              Colors.blueAccent.withOpacity(.1))
                                    ]),
                                child: GestureDetector(
                                  onLongPress: () {
                                    print("i am ali");
                                  },
                                  child: Icon(
                                    FontAwesome.wifi,
                                    color: Colors.blue.withOpacity(.6),
                                    size: 25.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                "Connected",
                                style: TextStyle(
                                    color: Colors.blue.withOpacity(.6),
                                    fontFamily: "nunito",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFe6ebf2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(-3, -3),
                          blurRadius: 3.0,
                          color: Colors.white.withOpacity(.7)),
                      BoxShadow(
                          offset: Offset(3, 3),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(.15))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe6ebf2)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFe6ebf2),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-2, -2),
                                  blurRadius: 2.0,
                                  color: Colors.black.withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(2, 2),
                                  blurRadius: 2.0,
                                  color: Colors.white.withOpacity(.7)),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFe6ebf2),
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFDCE7F1),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(-2, -2),
                                          blurRadius: 2.0,
                                          color: Colors.black.withOpacity(.3)),
                                      BoxShadow(
                                          offset: Offset(2, 2),
                                          blurRadius: 2.0,
                                          color: Colors.white.withOpacity(.7)),
                                    ]),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.fingerprint,
                                      size: 120,
                                      color: Colors.grey.withOpacity(.8),
                                    )),
                                /*Image.asset("images/125503.png",fit: BoxFit.contain,)), */

                                /// image here
                                ///
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              /// Add Fingerprint Button
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                  height: 90.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFe6ebf2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(-3, -3),
                            color: Colors.white.withOpacity(.7)),
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(3, 3),
                            color: Colors.black.withOpacity(.15))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Design(
                      message: "Add FingerPrint",
                      height1: 60,
                      width1: 60,
                      color: Color(0xFFe6ebf2),
                      offsetB: Offset(-2, -2),
                      offsetW: Offset(2, 2),
                      bLevel: 5.0,
                      iconData: Jana.addfinger,
                      iconSize: 50,
                    ),
                  ),
                ),
              ),

              /// Serach Fingerprint Button
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Container(
                  height: 90.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFe6ebf2),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(-3, -3),
                            color: Colors.white.withOpacity(.7)),
                        BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(3, 3),
                            color: Colors.black.withOpacity(.15))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Design(
                      message: "Search FingerPrint",
                      height1: 60,
                      width1: 60,
                      color: Color(0xFFe6ebf2),
                      offsetB: Offset(-2, -2),
                      offsetW: Offset(2, 2),
                      bLevel: 5.0,
                      iconData: Jana.searrchfinger,
                      iconSize: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Finger Print Device",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontFamily: "nunito",
                                fontSize: 15.0)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
