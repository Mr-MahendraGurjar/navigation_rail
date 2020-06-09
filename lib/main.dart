import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIdx = 0;
  bool extended = false;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Rail"),
      ),
      body: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
               // extended = !extended;
              });
            },
            child: NavigationRail(
              //  extended: extended,
                elevation: 10,
                groupAlignment: -1,
                backgroundColor: Colors.white,
                labelType: NavigationRailLabelType.all,
                selectedIconTheme: IconThemeData(color: Colors.blue[900], size: 30),
                selectedLabelTextStyle: TextStyle(color: Colors.blue, fontSize: 16),
                unselectedIconTheme: IconThemeData(color: Colors.grey),
                onDestinationSelected: (newIndex) {
                  setState(() {
                    selectedIdx = newIndex;
                    pageController.animateToPage(newIndex,
                        duration: Duration(microseconds: 250),
                        curve: Curves.easeInOut);
                  });
                },
                destinations: [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.phone_android), label: Text("Call")),
                  NavigationRailDestination(
                    icon: Icon(Icons.help),
                    label: Text("Info"),
                  ),
                  NavigationRailDestination(
                      icon: Icon(Icons.shopping_cart), label: Text("Cart")),
                  NavigationRailDestination(
                      icon: Icon(Icons.photo_camera), label: Text("Cam")),
                  NavigationRailDestination(
                      icon: Icon(Icons.add_alert), label: Text("alert"))
                ],
                selectedIndex: selectedIdx),
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                color: Colors.grey,
                child: Center(child: Text("Home")),
              ),
              Container(
                  color: Colors.black26, child: Center(child: Text("call"))),
              Container(
                  color: Colors.greenAccent,
                  child: Center(child: Text("info"))),
              Container(
                  color: Colors.amber, child: Center(child: Text("cart"))),
              Container(
                  color: Colors.pinkAccent, child: Center(child: Text("cam"))),
              Container(
                  color: Colors.brown, child: Center(child: Text("alert")))
            ],
          ))
        ],
      ),
    );
  }
}
