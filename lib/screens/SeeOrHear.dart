import 'package:flutter/material.dart';

class SeeOrHear extends StatefulWidget {
  const SeeOrHear({Key key}) : super(key: key);
  @override
  _SeeOrHearState createState() => _SeeOrHearState();
}

class _SeeOrHearState extends State<SeeOrHear> with AutomaticKeepAliveClientMixin {
  String _addInfo = '';

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Did you see or hear something?',
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
                    "I...",
                    style: TextStyle(color: Colors.white60, fontSize: 21),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Center(child: Text("heard", style: TextStyle(color: Colors.white, fontSize: 20),)),
                          margin: const EdgeInsets.fromLTRB(0, 20.0, 20, 0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(

                            border: Border.all(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(child: Text("saw", style: TextStyle(color: Colors.white, fontSize: 20))),
                          margin: const EdgeInsets.fromLTRB(0,20.0, 20,0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
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
