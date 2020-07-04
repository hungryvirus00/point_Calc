import 'package:flutter/material.dart';
import 'package:futte_cut/player2.dart';
import 'package:futte_cut/player3.dart';
import 'package:futte_cut/player4.dart';
import 'package:futte_cut/player5.dart';


class Player1 extends StatefulWidget {
  @override
  _Player1State createState() => _Player1State();
}

class _Player1State extends State<Player1> {

  int a;
  int b;
  int c;
  int d;
  int e;
  
  int p=0;
  int t = 0;
  int scores =0;
  
  TextEditingController game1 = TextEditingController();
  TextEditingController game2 = TextEditingController();
  TextEditingController game3 = TextEditingController();
  TextEditingController game4 = TextEditingController();
  TextEditingController game5 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.teal,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              
              
              child: Column(
                children: <Widget>[
                  Row( 
                    
                    children: <Widget>[
                      
            Column(
                  children: <Widget>[
                    Container(
                      color: Colors.amber,height: 550,width: 70,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Center(
                                child: Text(
                              'AMAR',
                              style: TextStyle(fontSize: 20),
                            )),
                            color: Colors.redAccent,
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
           

                      Container(color: Colors.green,
                          width: 70,
                          height: 75,
                          child: Column(
                            children: <Widget>[
                              Container(
                                
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
                                  height: 50, width: 70,
                                  
                                  child: Center(
                                      child: Center(
                                        child: Text(
                                    '$p',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.yellow,
                                    ),
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

                      Container(color: Colors.red,
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
                              OutlineButton(
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
                                        fontSize: 20,
                                        
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
            ),SizedBox(width: 8),
            Player2(),SizedBox(width: 8),
            Player3(),SizedBox(width: 8),
            Player4(),SizedBox(width: 8),
            Player5(),

            
          ],

                    
                    
                  ),
                  RaisedButton(onPressed: (){
                    setState(() {
                      game1.clear();
                      game2.clear();
                      game3.clear();
                      game4.clear();
                      game5.clear();

                      p=0;
                      t=0;
                      

                    });
                  },child: Text('New Game'),)
                ],
              ),
              
              
            ),
            
          ),
        

      ),
    );
  }
}
