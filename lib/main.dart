import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
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
            Text(
              'Count',
              style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red,fontSize: 30.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(
              height: 80.0,
            ),
            ButtonTheme(
              child: RaisedButton(
                onPressed: _incrementCounter,
                child: Text("Increment"),
              ),
              height: 50.0,
              minWidth: 30.0,
              buttonColor: Colors.grey[400],
            ),
            SizedBox(
              height: 30.0,
            ),
            ButtonTheme(
              child: RaisedButton(
                onPressed: _decrementCounter,
                child: Text("Decrement")
              ),
              height: 50.0,
              minWidth: 30.0,
              buttonColor: Colors.grey[400],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
