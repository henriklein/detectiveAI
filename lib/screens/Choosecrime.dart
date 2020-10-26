import 'package:detective_ai/widgets/continguee.dart';
import 'package:flutter/material.dart';

class ChooseCrime extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const ChooseCrime({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _ChooseCrimeState createState() => _ChooseCrimeState();
}

class _ChooseCrimeState extends State<ChooseCrime>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Choose from one of the crime categories below:',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
              padding:
              EdgeInsets.only(top: _height * 0.2, left: 25, right: 25),
              child: Material(
                color: Colors.white70.withOpacity(0.0),
                child: Container(
                  height: 200,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Only Robbery working yet 🙃", style:TextStyle(color: Colors.white54, fontSize: 16),),
                        ),
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                      ),
                      Row(
                        children: [

                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.search),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  splashColor: Colors.white70,
                                  onPressed: (){},
                                ),
                                Text(
                                  "Speeding",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.person_outline),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  splashColor: Colors.white70,
                                  onPressed: (){},
                                ),
                                Text(
                                  "Assault",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.account_balance),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  splashColor: Colors.white70,
                                  onPressed: (){},
                                ),
                                Text(
                                  "Violence",
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
                                  icon: new Icon(Icons.adb),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,

                                  onPressed: (){widget.pageController.animateToPage(2,
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInCubic);},
                                ),
                                Text(
                                  "Robbery",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.remove_red_eye),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  onPressed: (){},
                                ),
                                Text(
                                  "Suspicion",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ])),
                          Expanded(
                              child: Column(children: [
                                IconButton(
                                  icon: new Icon(Icons.edit),
                                  iconSize: 40,
                                  color: Colors.white,
                                  highlightColor: Colors.orange,
                                  onPressed: (){},
                                ),

                                Text(
                                  "Other",
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
