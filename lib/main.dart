import "package:flare_flutter/flare_actor.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flare Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flare-Flutter'),
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
  String _animationName = "idle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: FlareActor(
                "assets/Animals.flr",
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
                animation: _animationName,
              )),
              Expanded(
                  child: FlareActor(
                "assets/Filip.flr",
                alignment: Alignment.bottomCenter,
                fit: BoxFit.contain,
                animation: _animationName,
              ))
            ],
          ),
        ));
  }
}