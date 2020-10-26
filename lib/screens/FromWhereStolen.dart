import 'package:detective_ai/widgets/continguee.dart';
import 'package:flutter/material.dart';

class FromWhereStolen extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const FromWhereStolen({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _FromWhereStolenState createState() => _FromWhereStolenState();
}

class _FromWhereStolenState extends State<FromWhereStolen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Who did this happen to?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
              padding:
              EdgeInsets.only(top: _height * 0.22, left: 25, right: 25),
              child: Material(
                color: Colors.white70.withOpacity(0),
                child: Container(
                  height: 150,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.person_outline),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  onPressed: (){widget.pageController.animateToPage(3,
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInCubic);},
                                ),
                                Text(
                                  "Person",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.shopping_bag_outlined),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  onPressed: (){widget.pageController.animateToPage(3,
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInCubic);},
                                ),

                                Text(
                                  "Shop",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.home_outlined),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  onPressed: (){widget.pageController.animateToPage(3,
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInCubic);},
                                ),

                                Text(
                                  "House",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),

                        ],
                      )
                    ],
                  ),
                ),
              ))
          //Button(),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
