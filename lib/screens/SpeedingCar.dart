import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SpeedingCar extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;
  const SpeedingCar({Key key, this.pageController, this.buttonColor}) : super(key: key);

  @override
  _SpeedingCarState createState() => _SpeedingCarState();
}

class _SpeedingCarState extends State<SpeedingCar> with AutomaticKeepAliveClientMixin {
  String _addInfo = '';
  double _sliderValue = 40.0;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: _height * 0.23),
      child: Column(
       
        children: <Widget>[
          Text(
            'Approximately, how fast was the car going?',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: _height * 0.20),
              child: Column(
                children: [
                  Center(child: Icon(Icons.speed, color: Colors.white,size: 50,),),
                  Center(child: Text("km/h", style: TextStyle(color: Colors.white70),),),
                  SfSlider(
                    min: 40.0,
                    max: 200.0,
                    value: _sliderValue,
                    interval: 20,
                    showTicks: true,
                    showLabels: true,

                    showTooltip: false,
                    activeColor: Colors.white,
                    inactiveColor: Colors.white60,
                    minorTicksPerInterval: 1,
                    onChanged: (dynamic value){
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ],
              )
            ),
          ),
          SafeArea(child: Container(
            height: _height * 0.05,
            child: RaisedButton(

              onHighlightChanged: (press) {
              },
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
                'I do not know',
                style: TextStyle(color: widget.buttonColor),
              ),
            ),
          ),)

        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
