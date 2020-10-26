import 'package:flutter/material.dart';

class WhatWasStolen extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const WhatWasStolen({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _WhatWasStolenState createState() => _WhatWasStolenState();
}

class _WhatWasStolenState extends State<WhatWasStolen> with AutomaticKeepAliveClientMixin {
  String _addInfo = '';

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Did you get to see what was stolen?',
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
                  TextField(
                    onChanged: (texto) {
                      setState(() {
                        _addInfo = texto;
                      });
                    },
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white, fontSize: 21),
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelStyle:
                        TextStyle(color: Colors.white, fontSize: 18),
                        //labelText: '',
                        hintText: "Please answer here knowing",
                        hintStyle:
                        TextStyle(color: Colors.white54, fontSize: 18),
                        border: InputBorder.none),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Your input will be forwarded to\nyour local poice department.\nYou will remain anonymos',
                        style: TextStyle(fontSize: 14, color: Colors.white38),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '${_addInfo.length} / 56',
                        style: TextStyle(fontSize: 14, color: Colors.white38),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox(height: 10,),),
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, 10),
                      blurRadius: 15),
                ],
              ),
              height: _height * 0.075,
              child: RaisedButton(

                hoverColor: Colors.white,
                hoverElevation: 0,
                highlightColor: Colors.white,
                highlightElevation: 0,
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                onPressed: () {
                  widget.pageController.animateToPage(4,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInCubic);
                },
                child: Text(
                  "Done here, let's continue",
                  style: TextStyle(color: widget.buttonColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
