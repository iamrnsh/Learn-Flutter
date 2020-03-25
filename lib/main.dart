import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _player1 = 0;
  int _player2 = 0;

  void _incrementPlayer1() {
    setState(() {
      _player1++;
    });
  }
  void _incrementPlayer2() {
    setState(() {
      _player2++;
    });
  }

  void _reset()
  {
    setState(() {
      _player1 = 0;
      _player2 = 0;
    });
  }


  void _decrementPlayer1(){
    setState(() {
      _player1--;
    });
  }


  void _decrementPlayer2(){
    setState(() {
      _player2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Counter"),
        backgroundColor: Colors.black12,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40.0,
                ),
                Text(
                  'Player 1',
                  style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontSize: 30.0),
                ),
                SizedBox(
                  width: 80.0,
                ),
                Text(
                  'Player 2',
                  style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontSize: 30.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '$_player1',
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  width: 60.0,
                ),
                Text(
                  '$_player2',
                  style: TextStyle(fontSize: 40.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            /*Text(
              '$_player1',
              style: TextStyle(fontSize: 40.0),
            ),*/
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonTheme(
                  child: RaisedButton(
                    onPressed: _incrementPlayer1,
                    child: Text("Point"),
                  ),
                  height: 50.0,
                  minWidth: 30.0,
                  buttonColor: Colors.grey[400],
                ),
                ButtonTheme(
                  child: RaisedButton(
                    onPressed: _incrementPlayer2,
                    child: Text("Point"),
                  ),
                  height: 50.0,
                  minWidth: 30.0,
                  buttonColor: Colors.grey[400],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonTheme(
                  child: RaisedButton(
                    onPressed: _decrementPlayer1,
                    child: Text("Reduce")
                  ),
                  height: 50.0,
                  minWidth: 30.0,
                  buttonColor: Colors.grey[400],
                ),
                ButtonTheme(
                  child: RaisedButton(
                      onPressed: _decrementPlayer2,
                      child: Text("Reduce")
                  ),
                  height: 50.0,
                  minWidth: 30.0,
                  buttonColor: Colors.grey[400],
                ),
              ],
            )
            ,SizedBox(
             height: 40.0,
            )
            ,RaisedButton(
              child: Text("Reset"),
              onPressed: _reset,
            )
          ],

        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
