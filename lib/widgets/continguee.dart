import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const Button({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double _scaleHolder = 0;
  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;
    return
      Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 0.8),
          duration: Duration(milliseconds: 1000),
          curve: Curves.elasticOut,
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 80, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
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
                          onHighlightChanged: (press) {
                            setState(() {
                              if (press) {
                                _scaleHolder = 0.1;
                              } else {
                                _scaleHolder = 0.0;
                              }
                            });
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
                            widget.pageController.animateToPage(1,
                                duration: Duration(milliseconds: 800),
                                curve: Curves.easeInCubic);
                          },
                          child: Text(
                            'contingue',
                            style: TextStyle(color: widget.buttonColor),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
  }
}
