import 'package:flutter/material.dart';
import 'package:detective_ai/utils/animation_item.dart';
import 'package:detective_ai/widgets/logo_widget.dart';

class FirstPage extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const FirstPage({Key key, this.pageController, this.buttonColor}) : super(key: key);
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<AnimationItem> animationlist = [];
  double _scaleHolder = 0;
  @override
  void initState() {
    super.initState();
    delayAnimatiom(
        AnimationItem(
          name: 'padding_top_label',
          tween: Tween<double>(begin: 0.0, end: 1),
        ),
        Duration(milliseconds: 800), (animation) {
      setState(() {
        animationlist.add(animation);
      });
    });
    delayAnimatiom(
        AnimationItem(
          name: 'button_scale',
          tween: Tween<double>(begin: 0.0, end: 0.9),
        ),
        Duration(milliseconds: 1200), (animation) {
      setState(() {
        animationlist.add(animation);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TweenAnimationBuilder(
              duration: Duration(milliseconds: 800),
              curve: Curves.easeOutCubic,
              tween: findAnimation('padding_top_label', 20, animationlist),
              builder: (context, value, child) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: _height * 0.28 + value),
                      child: AnimatedOpacity(
                        opacity: value == 20 ? 0 : 1,
                        duration: Duration(milliseconds: 700),
                        child: Text(
                          'Hey there!',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: AnimatedOpacity(
                        opacity: value == 20 ? 0 : 1,
                        duration: Duration(milliseconds: 800),
                        child: Text(
                          "We are DetectiveAI,",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    TweenAnimationBuilder(
                        duration: Duration(milliseconds: 1200),
                        curve: Curves.easeOutCubic,
                        tween: findAnimation(
                            'padding_top_label', 20, animationlist),
                        builder: (context, paddingvalue, child) {
                          return AnimatedOpacity(
                            opacity: paddingvalue == 20 ? 0 : 1,
                            duration: Duration(milliseconds: 1300),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15 + paddingvalue),
                              child: Text.rich(
                                TextSpan(
                                  text: 'a secure and anonymous way to \n',
                                  children: [
                                    TextSpan(
                                      text: 'report crimes within less than a minute.',
                                    )
                                  ],
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }),
                    TweenAnimationBuilder(
                        duration: Duration(milliseconds: 1200),
                        curve: Curves.easeOutCubic,
                        tween: findAnimation(
                            'padding_top_label', 20, animationlist),
                        builder: (context, paddingvalue, child) {
                          return AnimatedOpacity(
                            opacity: paddingvalue == 20 ? 0 : 1,
                            duration: Duration(milliseconds: 1300),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 15 + paddingvalue),
                              child: Text.rich(
                                TextSpan(
                                  text: 'We are only interested in your\n',
                                  children: [
                                    TextSpan(
                                      text: 'tips, there will be no trace back \n or any commitment to you!',
                                    )
                                  ],
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white70),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }),
                  ],
                );
              }),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: <Widget>[
                TweenAnimationBuilder(
                  child: LogoWidget(),
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.elasticOut,
                  tween: _scaleHolder == 0.0
                      ? findAnimation('button_scale', 0.0, animationlist)
                      : Tween(begin: 0.9, end: 1.0),
                  builder: (context, value, child) {
                    return Transform.scale(
                      scale: value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
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
                                    'REPORT A CRIME',
                                    style: TextStyle(color: widget.buttonColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                TweenAnimationBuilder(
                    //child: LogoWidget(),
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticOut,
                    tween: findAnimation('button_scale', 0.0, animationlist),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: Text(
                          'Our terms and conditions',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
