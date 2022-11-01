// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MyApp());
}
// void main() => runApp(
//   DevicePreview(
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'FTC PowerPlay Scoring App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: _title,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 1, 50, 90),
          foregroundColor: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 1, 56, 102),
        ),

        // fontFamily: 'BebasNeue',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

// class ListViewHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         Text('List 1'),
//         Text('List 2'),
//         Text('List 3'),
//       ],
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num _autoTerminal = 0;
  num _autoGround = 0;
  num _autoLow = 0;
  num _autoMedium = 0;
  num _autoHigh = 0;
  var _autoParking = "Not Parked";
  num _autoParkingCount = 0;
  num _autoNum = 0;
  num _autoTotal = 0;
  num _teleTerminal = 0;
  num _teleGround = 0;
  num _teleLow = 0;
  num _teleMedium = 0;
  num _teleHigh = 0;
  num _teleNum = 0;
  num _teleTotal = 0;
  num _endOwned = 0;
  var _endBeacon = "No";
  var _endCircuit = "No";
  var _endParked = "No";
  num _endNum = 0;
  num _endTotal = 0;
  num _totalAll = 0;
  num _defaultValue = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('FTC PowerPlay Scorer',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.restart_alt,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _autoTerminal = 0;
                _autoGround = 0;
                _autoLow = 0;
                _autoMedium = 0;
                _autoHigh = 0;
                _autoParking = "Not Parked";
                _autoParkingCount = 0;
                _autoNum = 0;
                _autoTotal = 0;
                _teleTerminal = 0;
                _teleGround = 0;
                _teleLow = 0;
                _teleMedium = 0;
                _teleHigh = 0;
                _teleNum = 0;
                _teleTotal = 0;
                _endOwned = 0;
                _endBeacon = "No";
                _endCircuit = "No";
                _endParked = "No";
                _endNum = 0;
                _endTotal = 0;
                _totalAll = 0;
                _defaultValue = 0;
              });
            },
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Center(
              child: Text(
                'Autonomous',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                ),
              ),
            ),
            subtitle: Center(
              child: Text('30 Seconds',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
            tileColor: Colors.blue,
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Terminal',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // autoConesTerminal!=0?
                  // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
                  // new Text(autoConesTerminal.toString()),
                  // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
                  IconButton(
                    icon: Icon(
                      Icons.remove_circle_sharp,
                      size: 25,
                      color: Color.fromARGB(255, 1, 56, 102),
                    ),
                    onPressed: () => setState(() {
                      if (_autoTerminal > 0) {
                        _autoTerminal--;
                        _autoNum--;
                        _autoTotal--;
                        _totalAll -= 2;
                        _endTotal--;
                      } else {
                        //does nothing
                      }
                    }),
                  ),
                  Text(_autoTerminal.toString()),
                  IconButton(
                    icon: Icon(Icons.add_circle_sharp,
                        size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                    onPressed: () => setState(() {
                      if (_autoNum < 6) {
                        _autoTerminal++;
                        _autoNum++;
                        _autoTotal++;
                        _totalAll += 2;
                        _endTotal++;
                      } else {
                        // do nothing
                      }
                    }),
                  ),
                ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones on Ground Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_autoGround > 0) {
                    _autoGround--;
                    _autoNum--;
                    _autoTotal -= 2;
                    _totalAll -= 4;
                    _endTotal -= 2;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_autoGround.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_autoNum < 6) {
                    _autoGround++;
                    _autoNum++;
                    _autoTotal += 2;
                    _totalAll += 4;
                    _endTotal += 2;
                  } else {
                    // do nothing
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Low Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_autoLow > 0) {
                    _autoLow--;
                    _autoNum--;
                    _autoTotal -= 3;
                    _totalAll -= 6;
                    _endTotal -= 3;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_autoLow.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_autoNum < 6) {
                    _autoLow++;
                    _autoNum++;
                    _autoTotal += 3;
                    _totalAll += 6;
                    _endTotal += 3;
                  } else {
                    // do nothing
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Medium Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_autoMedium > 0) {
                    _autoMedium--;
                    _autoNum--;
                    _autoTotal -= 4;
                    _totalAll -= 8;
                    _endTotal -= 4;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_autoMedium.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_autoNum < 6) {
                    _autoMedium++;
                    _autoNum++;
                    _autoTotal += 4;
                    _totalAll += 8;
                    _endTotal += 4;
                  } else {
                    // do nothing
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in High Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_autoHigh > 0) {
                    _autoHigh--;
                    _autoNum--;
                    _autoTotal -= 5;
                    _totalAll -= 10;
                    _endTotal -= 5;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_autoHigh.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_autoNum < 6) {
                    _autoHigh++;
                    _autoNum++;
                    _autoTotal += 5;
                    _totalAll += 5;
                    _endTotal += 5;
                  } else {
                    // do nothing
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Parking',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_left,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_autoParkingCount > 0) {
                    _autoParkingCount--;
                  } else {
                    //does nothing
                  }
                  if (_autoParkingCount == 0 && _autoParking == "Not Parked") {
                    // do nothing
                  } else if (_autoParkingCount == 0) {
                    _autoParking = "Not Parked";
                    _autoTotal -= 2;
                    _totalAll -= 2;
                  } else if (_autoParkingCount == 1) {
                    _autoParking = "Terminal";
                  } else if (_autoParkingCount == 2) {
                    _autoParking = "Substation";
                    _autoTotal -= 10;
                    _autoTotal += 2;
                    _totalAll -= 8;
                  } else if (_autoParkingCount == 3) {
                    _autoParking = "Signal Zone";
                    _autoTotal -= 20;
                    _autoTotal += 10;
                    _totalAll -= 10;
                  } else {
                    _autoParking = "Sleeve Zone";
                  }
                }),
              ),
              Text(_autoParking.toString()),
              IconButton(
                icon: Icon(Icons.arrow_circle_right,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_autoParkingCount < 4) {
                    _autoParkingCount++;
                  } else {
                    //does nothing
                  }
                  if (_autoParkingCount == 0) {
                    _autoParking = "Not Parked";
                  } else if (_autoParkingCount == 1) {
                    _autoParking = "Terminal";
                    _autoTotal += 2;
                    _totalAll += 2;
                  } else if (_autoParkingCount == 2) {
                    _autoParking = "Substation";
                  } else if (_autoParkingCount == 3) {
                    _autoParking = "Signal Zone";
                    _autoTotal -= 2;
                    _autoTotal += 10;
                    _totalAll += 8;
                  } else if (_autoParkingCount == 4 &&
                      _autoParking == "Sleeve Zone") {
                    // do nothing
                  } else if (_autoParkingCount == 4) {
                    _autoParking = "Sleeve Zone";
                    _autoTotal -= 10;
                    _autoTotal += 20;
                    _totalAll += 10;
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
//         Card(
//           child: ListTile(
//             // height: 50,
//             // color: const Color.fromARGB(255, 172, 13, 1),
//             title: Text(
//               'Used Signal Sleeve?',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontFamily: 'Anton',
//                 color: Color.fromARGB(255, 1, 56, 102),
//               ),
//             ),
//             tileColor: Color.fromARGB(255, 144, 203, 252),
//           ),
//         ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Center(
              child: Text(
                'Driver Controlled',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                ),
              ),
            ),
            subtitle: Center(
              child: Text('60 Seconds',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
            tileColor: Colors.blue,
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Terminal',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_teleTerminal > 0) {
                    _teleTerminal--;
                    _teleNum--;
                    _teleTotal--;
                    _totalAll--;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_teleTerminal.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _teleTerminal++;
                  _teleNum++;
                  _teleTotal++;
                  _totalAll++;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones on Ground junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_teleGround > 0) {
                    _teleGround--;
                    _teleNum--;
                    _teleTotal -= 2;
                    _totalAll -= 2;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_teleGround.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _teleGround++;
                  _teleNum++;
                  _teleTotal += 2;
                  _totalAll += 2;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Low Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_teleLow > 0) {
                    _teleLow--;
                    _teleNum--;
                    _teleTotal -= 3;
                    _totalAll -= 3;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_teleLow.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _teleLow++;
                  _teleNum++;
                  _teleTotal += 3;
                  _totalAll += 3;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in Medium Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_teleMedium > 0) {
                    _teleMedium--;
                    _teleNum--;
                    _teleTotal -= 4;
                    _totalAll -= 4;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_teleMedium.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _teleMedium++;
                  _teleNum++;
                  _teleTotal += 4;
                  _totalAll += 4;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Cones in High Junction',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_teleHigh > 0) {
                    _teleHigh--;
                    _teleNum--;
                    _teleTotal -= 5;
                    _totalAll -= 5;
                  } else {
                    //does nothing
                  }
                }),
              ),
              Text(_teleHigh.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _teleHigh++;
                  _teleNum++;
                  _teleTotal += 5;
                  _totalAll += 5;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Center(
              child: Text(
                'End-Game',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                ),
              ),
            ),
            subtitle: Center(
              child: Text('30 Seconds',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
            ),
            tileColor: Colors.blue,
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Junctions Owned',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.remove_circle_sharp,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_endOwned > 0) {
                    _endOwned--;
                    _endNum--;
                    _endTotal -= 3;
                    _totalAll -= 3;
                  } else {
                    // does nothing
                  }
                }),
              ),
              Text(_endOwned.toString()),
              IconButton(
                icon: Icon(Icons.add_circle_sharp,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  _endOwned++;
                  _endNum++;
                  _endTotal += 3;
                  _totalAll += 3;
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Beacon',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_left,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_endBeacon == "No") {
                    // do nothing
                  } else {
                    _endBeacon = "No";
                    _endTotal -= 10;
                    _totalAll -= 10;
                  }
                }),
              ),
              Text(_endBeacon.toString()),
              IconButton(
                icon: Icon(Icons.arrow_circle_right,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_endBeacon == "Yes") {
                    // do nothing
                  } else {
                    _endBeacon = "Yes";
                    _endTotal += 10;
                    _totalAll += 10;
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Completed Circuit',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_left,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_endCircuit == "No") {
                    // do nothing
                  } else {
                    _endCircuit = "No";
                    _endTotal -= 20;
                    _totalAll -= 20;
                  }
                }),
              ),
              Text(_endCircuit.toString()),
              IconButton(
                icon: Icon(Icons.arrow_circle_right,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_endCircuit == "Yes") {
                    // do nothing
                  } else {
                    _endCircuit = "Yes";
                    _endTotal += 20;
                    _totalAll += 20;
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Parked in Terminal',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              IconButton(
                icon: Icon(
                  Icons.arrow_circle_left,
                  size: 25,
                  color: Color.fromARGB(255, 1, 56, 102),
                ),
                onPressed: () => setState(() {
                  if (_endParked == "No") {
                    // do nothing
                  } else {
                    _endParked = "No";
                    _endTotal -= 2;
                    _totalAll -= 2;
                  }
                }),
              ),
              Text(_endParked.toString()),
              IconButton(
                icon: Icon(Icons.arrow_circle_right,
                    size: 25, color: Color.fromARGB(255, 1, 56, 102)),
                onPressed: () => setState(() {
                  if (_endParked == "Yes") {
                    // do nothing
                  } else {
                    _endParked = "Yes";
                    _endTotal += 2;
                    _totalAll += 2;
                  }
                }),
              ),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Center(
              child: Text(
                'Scoring Totals',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                  fontFamily: 'Oswald',
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            tileColor: Colors.blue,
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Autonomous:',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
                decoration: TextDecoration.underline,
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              Text(_autoTotal.toString(), textScaleFactor: 1.3),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Driver Controlled:',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
                decoration: TextDecoration.underline,
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              Text(_teleTotal.toString(), textScaleFactor: 1.3),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'End Game:',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 1, 56, 102),
                decoration: TextDecoration.underline,
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              Text(_endTotal.toString(), textScaleFactor: 1.3),
            ]),
            tileColor: Color.fromARGB(255, 144, 203, 252),
          ),
        ),
        Card(
          child: ListTile(
            // height: 50,
            // color: const Color.fromARGB(255, 172, 13, 1),
            title: Text(
              'Total:',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Anton',
                color: Color.fromARGB(255, 196, 229, 255),
                decoration: TextDecoration.underline,
              ),
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              // autoConesTerminal!=0?
              // new IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>autoConesTerminal--),),
              // new Text(autoConesTerminal.toString()),
              // new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>autoConesTerminal++)),
              Text(
                _totalAll.toString(),
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Color.fromARGB(255, 196, 229, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            tileColor: Color.fromARGB(255, 1, 56, 102),
          ),
        ),
        Center(child: Text('Made by Rishit Agrawal | Team 18715 Artemis | 2022-2023', 
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
        ),)),
        Text(''),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}