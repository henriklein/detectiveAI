import 'package:detective_ai/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:detective_ai/utils/animation_item.dart';
import 'package:detective_ai/widgets/logo_widget.dart';

class ThankYou extends StatefulWidget {
  final PageController pageController;
  final Color buttonColor;

  const ThankYou({Key key, this.pageController, this.buttonColor})
      : super(key: key);
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
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
          Expanded(
            child: TweenAnimationBuilder(
                duration: Duration(milliseconds: 800),
                curve: Curves.easeOutCubic,
                tween: findAnimation('padding_top_label', 20, animationlist),
                builder: (context, value, child) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, top: _height * 0.23 + value),
                        child: AnimatedOpacity(
                          opacity: value == 20 ? 0 : 1,
                          duration: Duration(milliseconds: 700),
                          child: Text(
                            'Nearly done!',
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
                            "Click the button below to submit the crime.",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: _height *0.05),
                        child: TweenAnimationBuilder(
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
                                      left: 30,
                                      right: 30,
                                      top: 15 + paddingvalue),
                                ),
                              );
                            }),
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
                                    left: 30,
                                    right: 30,
                                    top: 15 + paddingvalue),
                                child: Text.rich(
                                  TextSpan(
                                    text:
                                        ('Don\'t worry: your tip will be\n'),
                                    children: [
                                      TextSpan(
                                        text:
                                            'completely anonymous.',
                                      ),
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
                                    left: 30,
                                    right: 30,
                                    top: 15 + paddingvalue),
                                child: Text.rich(
                                  TextSpan(
                                    text: 'submitting incorrect information \n',
                                    children: [
                                      TextSpan(
                                        text: 'knowingly is illegal, though.',
                                      ),
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
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
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
                              horizontal: 40, vertical: 25),
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
                                      _showProcess(context);
                                    },
                                    child: Text(
                                      'SUBMIT',
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
                          child: Column(children: [
                            Text(
                              'By clicking this button you agree that the information',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                                "you entered will be forwarded to the police.",
                                style: TextStyle(color: Colors.white)),
                          ]),
                        );
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void _showProcess(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(0.0),
                topLeft: Radius.circular(85.0))),
        isScrollControlled: true,
        isDismissible: true,
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(child: Text("Thank you", style: TextStyle(fontSize: 40, backgroundColor: Colors.white54),),),
                          SizedBox(height: 6,),
                          Text("Your data is currently uploading to server...", style: TextStyle(fontSize: 15),),
                          SizedBox(height: 20,),
                          Text(
                            "People like you make this world safer!",
                            style: TextStyle(
                                fontSize: 16, color: Colors.black54),
                          ),

                          Container(
                            height: 200,
                            width: 100,
                            child: Center(
                              child: ColorLoader4(),
                            ),
                          ),
                   RaisedButton(

                                hoverColor: Colors.white,
                                hoverElevation: 0,
                                highlightColor: Colors.white,
                                highlightElevation: 0,
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)),
                                onPressed: () {
                                  Navigator.pop(context);
                                  widget.pageController.animateToPage(1,
                                      duration: Duration(milliseconds: 800),
                                      curve: Curves.easeInCubic);
                                },
                                child: Text(
                                  "Press here to report another crime, or...",
                                  style: TextStyle(color: widget.buttonColor),
                                ),
                              ),

                          Center(
                            child: Text(
                              "... find out more about our mission here!",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
