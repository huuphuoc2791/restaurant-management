import 'package:flutter/material.dart';
import 'package:restaurant_management/insta_body.dart';

class InstaHome extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    brightness: Brightness.light,
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.autorenew),
    title: SizedBox(
        height: 32.0, child: Text(
      "Restaurant Management",
      style: TextStyle(fontWeight: FontWeight.normal, fontFamily: "GreatVibes", fontSize: 24),
    )),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new InstaBody(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 56.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  iconSize: 36,
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  iconSize: 36,
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.lightBlueAccent,
                  ),
                  iconSize: 36,
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.pinkAccent,
                  ),
                  iconSize: 36,
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.info,
                  ),
                  iconSize: 36,
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}
