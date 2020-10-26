import 'package:flutter/material.dart';

class UsersRole extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const UsersRole({Key key, this.pageController, this.buttonColor})
      : super(key: key);
  @override
  _UsersRoleState createState() => _UsersRoleState();
}

class _UsersRoleState extends State<UsersRole>
    with AutomaticKeepAliveClientMixin {
  String _addInfo = '';

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Are you a victim or a witness?',
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
                    "I am a:",
                    style: TextStyle(color: Colors.white60, fontSize: 21),
                  ),
                  Material(
                    color: Colors.white70.withOpacity(0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Expanded(
                          child: InkWell(
                            onTap: () {
                              widget.pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 800),
                                  curve: Curves.easeInCubic);
                            },
                            child: Container(

                              child: Center(
                                  child: Text(
                                "Victim",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                              )),
                              margin: const EdgeInsets.fromLTRB(0, 20.0, 20, 0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              widget.pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 800),
                                  curve: Curves.easeInCubic);
                            },
                            child: Container(

                              child: Center(
                                  child: Text(
                                    "Witness",
                                    style:
                                    TextStyle(color: Colors.white, fontSize: 20),
                                  )),
                              margin: const EdgeInsets.fromLTRB(0, 20.0, 20, 0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
