import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio application',
      theme: ThemeData(
        fontFamily: 'GoogleSans', // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Bio application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: new FaIcon(FontAwesomeIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: new FaIcon(FontAwesomeIcons.peopleArrows), label: "About")
          ],
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Container(
                  width: 190.0,
                  height: 190.0,
                  decoration: new BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //       color: Colors.grey.withOpacity(0.8),
                      //       spreadRadius: 2,
                      //       blurRadius: 10,
                      //       offset: Offset(0, 7))
                      // ],
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("images/gabriel.jpg")))),
              new Container(
                margin: const EdgeInsets.all(12.0),
                child: Text(
                  "Gabriel Akinyosoye",
                  style: TextStyle(
                      letterSpacing: 2, fontSize: 30, color: Colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.red,
                    child: IconButton(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print(FontAwesomeIcons.accusoft);
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pinkAccent,
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
