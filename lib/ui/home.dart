import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  void onPress() {
    print("Search tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amberAccent,
        title: new Text("Call me, maybe!"),
        actions: <Widget>[
//          new IconButton(
//              icon: new Icon(Icons.send),
//              onPressed: () => debugPrint("Icon tapped")),
          new IconButton(icon: new Icon(Icons.search), onPressed: onPress)
        ],
      ),

      //other properties
      backgroundColor: Colors.greenAccent.shade50,

      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "<contacts appear here>",
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepOrange),
            ),
            new InkWell(
              child: new Text("Refresh"),
              onTap: () => debugPrint("Button tapped"),
            ),
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: ()=> debugPrint("Floating pressed"),
        backgroundColor: Colors.amberAccent,
        tooltip: 'Going up!',
        child: new Icon(Icons.add_call),
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.call_made), title: new Text("Speed dial")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.access_time), title: new Text("Call history")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text("Contacts"))
        ],
        onTap: (int i) => debugPrint("touched $i"),
      ),
    );
  }
}
