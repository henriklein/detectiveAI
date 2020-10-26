import 'package:detective_ai/widgets/continguee.dart';
import 'package:flutter/material.dart';

class InduvidualOrGroup extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const InduvidualOrGroup({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _InduvidualOrGroupState createState() => _InduvidualOrGroupState();
}

class _InduvidualOrGroupState extends State<InduvidualOrGroup>
    with AutomaticKeepAliveClientMixin {

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Was it a group, or a single person?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.22),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "I saw:",
                    style: TextStyle(color: Colors.white60, fontSize: 21),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            widget.pageController.animateToPage(5,
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInCubic);
                          },
                          child: Container(
                            child: Center(child: Text("A person", style: TextStyle(color: Colors.white, fontSize: 20),)),
                            margin: const EdgeInsets.fromLTRB(0, 20.0, 20, 0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(

                              border: Border.all(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            widget.pageController.animateToPage(5,
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInCubic);
                          },
                          child: Container(
                            child: Center(child: Text("A group", style: TextStyle(color: Colors.white, fontSize: 20))),
                            margin: const EdgeInsets.fromLTRB(0,20.0, 20,0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
