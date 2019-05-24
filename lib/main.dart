import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'My first flutter app 4'),
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
String dropdownStr = 'Batman Begins';
enum Movies { CaptainMarvel, Shazam }
enum Whyfarther{ service, booking, testdrive, workshop}


// video 18 expansion panel list of Inputselection components start
class MyItem {
MyItem({this.isExpanded: false, this.header, this.body});

bool isExpanded;
final String header;
final String body;
}
// video 18 expansion panel list of Inputselection components end


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;
  bool checkBoxValue = false;
  int group = 1;
  Whyfarther _selection;
  int _volume = 100;


// video 18 expansion panel list of Inputselection components start
 /* List<MyItem> _items = <MyItem>[
    MyItem(header: "Header", body: "Body"),
    MyItem(header: "Header 2", body: "Body 2"),
    MyItem(header: "Header 3", body: "Body 3"),
  ];  */
// video 18 expansion panel list of Inputselection components end


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void ButtonClick()
  {
   print("Button is clicked");
  }
 /* void CallContact()
  {
    print("Calling Contact");
  }
  void AddInfoToContact()
  {
    print("Adding Info To Contact");
  }
  void ItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  } */


 // video 17 bootom sheet of Inputselection components start
 /* void OpenBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context)
    {
      return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Alarm"),
                onTap: () {
                  print("Open Alarm");
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text("Map"),
                onTap: () {
                  print("Open Map");
                  Navigator.of(context).pop();
                },
              )
            ],
          )
      );
    }
    );
  } */
  // video 17 bootom sheet of Inputselection components end



 /* Future<void> OpenDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Select A Movie"),
            children: <Widget>[
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, Movies.CaptainMarvel);
                  },
                  child: const Text("Captain Marvel")
              ),
              SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context, Movies.Shazam);
                  },
                  child: const Text("Shazam")
              )
            ],
          );
        }
    )) {
      case Movies.CaptainMarvel:
        print("Captain Marvel Selected");
        break;

      case Movies.Shazam:
        print("Shazam Selected");
        break;
    }
  } */


  // video 19 snackbar of Inputselection components start
  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();
  // video 19 snackbar of Inputselection components end

  @override
  Widget build(BuildContext context) {


// video 19 snackbar of Inputselection components start
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: RaisedButton(
              onPressed: () {
                final snkBar = SnackBar(
                  content: Text("Pizza Time"),
                  action: SnackBarAction(
                    label: "Order",
                    onPressed: () {
                      print("Pizza is on its way");
                    },
                  ),
                );

                _scaffold.currentState.showSnackBar(snkBar);
              },
              child: Text("Click Me")
          )

      ),
    );
// video 19 snackbar of Inputselection components end


    // video 18 expansion panel list of Inputselection components start
 /*   return ListView(
        children: <Widget>[
          ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _items[index].isExpanded = !_items[index].isExpanded;
              });
            },
            children: _items.map((MyItem item) {
              return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Text(item.header);
                  },
                  isExpanded: item.isExpanded,
                  body: Container (
                      child: Text(item.body)
                  )
              );
            }).toList(),
          )
        ],
    ); */
      // video 18 expansion panel list of Inputselection components end


        /* return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),

      ),


      // video 17 bootom sheet of Inputselection components start
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: IconButton(
            icon: Icon(Icons.open_in_new),
            onPressed: () {
              OpenBottomSheet(context);
            },
          )
      ), */
// video 17 bootom sheet of Inputselection components end


//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//          child: IconButton(
//            icon: Icon(Icons.play_circle_filled),
//            onPressed: () {
//              OpenDialog();
//            },
//          )
//
//      ),

//      body: Center(
//        child: IconButton(
//            icon: Icon(Icons.volume_down),
//            tooltip: "volume",
//            onPressed: (){
//              setState(() {
//                _volume -=10;
//                print(_volume);
//              });
//
//            }
//        ),




//        child: PopupMenuButton <Whyfarther>(
//          onSelected: (Whyfarther result){
//            print(result);
//            setState(() {
//              _selection = result;
//            });
//          },
//          itemBuilder: (BuildContext context) => <PopupMenuEntry<Whyfarther>> [
//            const PopupMenuItem<Whyfarther>(
//              value: Whyfarther.service,
//              child: Text("Car service"),
//            ),
//
//            const PopupMenuItem<Whyfarther>(
//              value: Whyfarther.booking,
//              child: Text("Car booking"),
//            ),
//
//             const PopupMenuItem<Whyfarther>(
//             value: Whyfarther.testdrive,
//             child: Text("Car Testdrive"),
//          ),
//            const PopupMenuItem<Whyfarther>(
//              value: Whyfarther.workshop,
//              child: Text("Car Workshops"),
//            ),
//          ]
//        )


  }
}

//        child: Row(
//          children: <Widget>[
//            Checkbox(
//              value: checkBoxValue,
//              onChanged: (bool value){
//                print(value);
//
//                setState(() {
//                  checkBoxValue = value;
//                });
//              },
//            ),
//            Text("Notifications"),
//
//            Radio(
//              value: 1,
//              groupValue: group,
//              onChanged: (T) {
//                print(T);
//
//              setState(() {
//                group = T;
//              });
//              }
//            ),
//          Radio(
//          value: 2,
//          groupValue: group,
//          onChanged: (T) {
//            print(T);
//
//            setState(() {
//              group = T;
//            });
//          }
//         ),
//          Radio(
//          value: 3,
//          groupValue: group,
//          onChanged: (T) {
//          print(T);
//
//          setState(() {
//            group = T;
//          });
//        }
//         ),
//          Radio(
//          value: 4,
//          groupValue: group,
//          onChanged: (T) {
//          print(T);
//
//          setState(() {
//            group = T;
//          });
//        }
//         ),
//          ],
//        ),

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
//          child: DropdownButton <String>(
//              value: dropdownStr,
//              onChanged: (String newValue) {
//                setState(() {
//                  dropdownStr = newValue;
//                });
//              },
//              items: <String> ['Batman Begins', 'The Dark Knight', 'The Dark Knight Rises']
//                  .map<DropdownMenuItem<String>> ((String value) {
//                return DropdownMenuItem<String> (
//                    value: value,
//                    child: Text(value)
//                );
//              }).toList()
//          )



//        body: Center(
//          child: DropdownButton <String>(
//              value: dropdownstr,
//              onChanged: (String newvalue)
//              {
//                setState(() {
//                  dropdownstr = newvalue;
//                });
//              },
//              items: <String> ['batman begins']
//                  .map<DropdownMenuItem<String>> ((String value) {
//          return DropdownMenuItem<String>(
//          value = value,
//        child: Text(value)
//        );
//
//        }).toList()
//          )




        /*
  child: RaisedButton(
    onPressed: ButtonClick,
  child: Text("Click Me"),
  color: Colors.red,
  textColor: Colors.white,
  highlightColor: Colors.black,
), */
//        ),
//    );


   /* return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          expandedHeight: 50.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Flutter Sliver Bar"),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.cyanAccent,
                  child: Text("list item $index "),
                );
              },
            childCount: 20,
          ),
        )
    ]
    );  This is list view */

 /* Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_boat)),
                  Tab(icon: Icon(Icons.directions_run)),
                  Tab(icon: Icon(Icons.directions_subway)),
                ],
              ),
              title: Text("Tab Bar"),
            ),
              body: TabBarView(
                children: [
                  Icon(Icons.directions_boat),
              Icon(Icons.directions_run),
          Icon(Icons.directions_subway),
                ],
              ),


            ),
          ),
      );
    // ); */

   /* return Scaffold( //RETURN SCAFFOLD STARTS HERE
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            tooltip: "Call contact",
            onPressed: CallContact,
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "Add Info To Contact",
            onPressed: AddInfoToContact,
          ),
        ],
      ),
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          child: Image(
          image: AssetImage("assets/images/bat.jpg"),
          ), */
            //child: Listener(
         /* child: GestureDetector(
              onLongPress: (){
                print("Long press");
              },
              onLongPressUp: (){
                print("Long press Released");
              },
           onTap: (){
              print("tapped");
            }, */
         //    child: new Image(image: AssetImage("assets/images/bat.jpg"))

          //)
             /* onPointerDown: (PointerDownEvent event)
                {
                  print("clicked");
                },
          onPointerMove: (PointerMoveEvent event)
          {
            print("moved");
            print("event");
          }, */

         //   )

         //   ),
        //  ),

         // child: Align(
           // alignment: Alignment.bottomLeft,
          //  child: Text("Hello flutter"),
       //  )
         // child: Center(
          //  child: Text("Hello flutter"),
        //  )
         // child: Row(
        //  child: Image(
           // image: NetworkImage("https://lh3.googleusercontent.com/wUIpJlffuKDLIIpwDZ1vV1suqGUcrgkmkN02VA0grnS7CcDCehXcx54PgTr5dS3RE5XzXpwi=w1080-h608-p-no-v0"),
        //  image: AssetImage("assets/images/drive4wheels.jpg"),
            //child: Stack(
            //alignment: AlignmentDirectional.bottomEnd,
        //child: SizedBox(
        // width: 50.0,
         // height: 1000.0,

     /*  child: Column(

         children: <Widget>
        [
            new AspectRatio(aspectRatio: 4/3,
              child: new Image(image: AssetImage("assets/images/drive4wheels.jpg"))),
              new Text("Hello flutter") */
            //  style: new TextStyle(
             // color: Colors.green,
           // fontSize: 35.0,
            //  ),
//  ],
        //  ),
     //   );
      // new Baseline(
         //  baseline: 0, baselineType: TextBaseline.alphabetic,
         //  child: new Text("Hello")
     //  ),

       // new Padding(
          //padding: EdgeInsets.fromLTRB(20.0, 0.0, 90.0, 0.0),
         // padding: EdgeInsets.all(0.0),
        //  child: new Text("Hello"),
       // ),
             // new ConstrainedBox(
              //  constraints: BoxConstraints(minWidth: 40.0),

             // ),

         // new Text("bye"),

        //    ],
        //  )
  //  )

   // ),

/*
bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.directions_car) , title: Text("Car Directions")),
        BottomNavigationBarItem(icon: Icon(Icons.room_service) , title: Text("Room Service")),
        BottomNavigationBarItem(icon: Icon(Icons.business) , title: Text("Bisiness")),
      ],
        currentIndex: _selectedIndex,
        onTap: ItemTapped,
        fixedColor: Colors.blueAccent,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.airplay),
       // This trailing comma makes auto-formatting nicer for build methods.
    ),
    );  // RETURN SCAFFOLD ENDS HERE */
 // }
//}

