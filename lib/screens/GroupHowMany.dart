import 'package:detective_ai/widgets/continguee.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GroupHowMany extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const GroupHowMany({Key key, this.pageController, this.buttonColor})
      : super(key: key);
  @override
  _GroupHowManyState createState() => _GroupHowManyState();
}

class _GroupHowManyState extends State<GroupHowMany>
    with AutomaticKeepAliveClientMixin {
  double _currentSliderValue = 6;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
        children: <Widget>[
          Text(
            'Approximately, how many robbers were there?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: _height * 0.25),
            child: Column(children: <Widget>[
              Container(
                height: 30,
              width: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  itemCount: _currentSliderValue.round(),
                    itemBuilder: (BuildContext context,int index){
                      return Row(
                          children: [Icon(Icons.person_outline, color: Colors.white54,)], );
                    }

                ),
              ),
              Text(_currentSliderValue.round().toString() + ".", style: TextStyle(color: Colors.white54, fontSize: 40),),
              Slider(
                inactiveColor: Colors.white54,
                activeColor: Colors.white,
                value: _currentSliderValue,
                min: 1,
                max: 12,
                divisions: 10,

                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),

            ]),
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
                  widget.pageController.animateToPage(5,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInCubic);
                },
                child: Text(
                  "This seems pretty accurate to me.",
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
