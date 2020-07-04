import 'package:flutter/material.dart';
class Player3 extends StatefulWidget {
  @override
  _Player3State createState() => _Player3State();
}

class _Player3State extends State<Player3> {
   int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e ;
  int p = 0;
  int t = 0;
  
  TextEditingController game1 = TextEditingController();
  TextEditingController game2 = TextEditingController();
  TextEditingController game3 = TextEditingController();
  TextEditingController game4 = TextEditingController();
  TextEditingController game5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
                      children: <Widget>[
                        Container(
                          color: Colors.amber,height: 550,width: 70,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Center(
                                    child: Text(
                                  'RAM',
                                  style: TextStyle(fontSize: 23),
                                )),
                                color: Colors.yellow,
                                height: 50,
                                width: 70,
                              ),
                              SizedBox(height: 8),
                          Container(
                            color: Colors.white,
                            child: TextField(
                              controller: game1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(
                                  hintText: '1st game',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                  )),
                            ),
                            height: 50,
                            width: 70,
                          ),
                          SizedBox(height: 8),
                          Container(
                            color: Colors.red[50],
                            height: 50,
                            width: 70,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: game2,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(
                                  hintText: '2nd game',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            color: Colors.red[100],
                            height: 50,
                            width: 70,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: game3,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(
                                  hintText: '3rd game',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            color: Colors.red[200],
                            height: 50,
                            width: 70,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: game4,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(
                                  hintText: '4th game',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                          ),
                          SizedBox(height: 20),
                   

                          Container(
                              width: 70,
                              height: 75,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    color: Colors.green,
                                    height: 25,
                                    width: 70,
                                    child: Text(
                                      'Pre-Calc',
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  RaisedButton(color: Colors.brown,
                                    onPressed: () {
                                      setState(() {
                                        a = int.parse(game1.text);
                                        b = int.parse(game2.text);
                                        c = int.parse(game3.text);
                                        d = int.parse(game4.text);
                                        
                                        p = a + b + c + d ;
                                      });
                                    },
                                    child: Container(
                                      
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        '$p',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.yellow,
                                        ),
                                      )),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(height: 8),

                           Container(
                            color: Colors.red[300],
                            height: 50,
                            width: 70,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: game5,
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(
                                  hintText: '5th game',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                          ),
                          SizedBox(height: 20),

                          Container(
                              width: 70,
                              height: 75,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 25,
                                    width: 70,
                                    color: Colors.white,
                                    child: Text(
                                      'Score', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  OutlineButton(color: Colors.white,
                                    onPressed: () {
                                      e = int.parse(game5.text);
                                     setState(() {
                                        t = p + e;
                                      });
                                      
                                    },
                                    child: Container(
                                      
                                      height: 50,
                                      width: 70,
                                      child: Center(
                                        child: Text(
                                          '$t',
                                          style: TextStyle(
                                            fontSize: 20,fontWeight: FontWeight.w900,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ],
                    );

  }
}