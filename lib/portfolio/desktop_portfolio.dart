import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class DesktopPortfolio extends StatefulWidget {
  final bool includeTopBar;

  const DesktopPortfolio({Key? key, required this.includeTopBar})
      : super(key: key);

  @override
  _DesktopPortfolioState createState() => _DesktopPortfolioState();
}

class _DesktopPortfolioState extends State<DesktopPortfolio> {
  Map<int, bool> tabSelected = {
    0: true,
    1: false,
    2: false,
  };

  int currTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.includeTopBar ? TopBar(navIndex: 2) : Container(),
        Expanded(
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(94.w, 30.h, 94.w, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Portfolio",
                              style: TextStyle(
                                  fontSize: 50.sp, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 50.w),
                            Container(
                              color: kAccentColor,
                              width: 345.w,
                              height: 2.h,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                          shape: CircleBorder(
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.5))),
                          onPressed: () {
                            for (int i = 0; i < tabSelected.length; i++)
                              setState(() {
                                tabSelected[i] = false;
                              });
                            setState(() {
                              tabSelected[--currTab] = true;
                            });
                          },
                          padding: EdgeInsets.all(30),
                          child: Icon(Icons.arrow_back_ios_outlined,
                              color: Colors.white, size: 20)),
                      SizedBox(width: 20.w),
                      MaterialButton(
                          shape: CircleBorder(
                              side: BorderSide(
                                  color: Colors.white.withOpacity(0.5))),
                          onPressed: () {
                            for (int i = 0; i < tabSelected.length; i++)
                              setState(() {
                                tabSelected[i] = false;
                              });
                            setState(() {
                              tabSelected[++currTab] = true;
                            });
                          },
                          padding: EdgeInsets.all(30),
                          child: Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.white, size: 20)),
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          for (int i = 0; i < tabSelected.length; i++)
                            setState(() {
                              tabSelected[i] = false;
                            });
                          setState(() {
                            tabSelected[0] = true;
                          });
                          currTab = 0;
                        },
                        child: Text("All",
                            style: TextStyle(
                                color: tabSelected[0]!
                                    ? kAccentColor
                                    : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30.sp)),
                      ),
                      SizedBox(width: 30.w),
                      TextButton(
                        onPressed: () {
                          for (int i = 0; i < tabSelected.length; i++)
                            setState(() {
                              tabSelected[i] = false;
                            });
                          setState(() {
                            tabSelected[1] = true;
                          });
                          currTab = 1;
                        },
                        child: Text("Mobile apps",
                            style: TextStyle(
                                color: tabSelected[1]!
                                    ? kAccentColor
                                    : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30.sp)),
                      ),
                      SizedBox(width: 30.w),
                      TextButton(
                        onPressed: () {
                          for (int i = 0; i < tabSelected.length; i++)
                            setState(() {
                              tabSelected[i] = false;
                            });
                          setState(() {
                            tabSelected[2] = true;
                          });
                          currTab = 2;
                        },
                        child: Text("Websites",
                            style: TextStyle(
                                color: tabSelected[2]!
                                    ? kAccentColor
                                    : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30.sp)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    child: _prepareBottomWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _prepareBottomWidget() {
    if (tabSelected[0]!)
      return _prepareAllTab();
    else if (tabSelected[1]!)
      return _prepareAppsTab();
    else if (tabSelected[2]!)
      return _prepareWebsitesTab();
    else
      return Container();
  }

  List<Widget> _generateSampleCards(String text, int num) {
    List<Widget> l = [];
    for (int i = 0; i < num; i++) {
      l.add(
        ProjectCard(
          firstWidget: Center(
              child: AutoSizeText(
            text,
            maxLines: 1,
            style: kSampleTextStyle,
          )),
          secondWidget: Center(
              child: AutoSizeText(
            text,
            maxLines: 1,
            style: kSampleTextStyle,
          )),
        ),
      );
    }
    return l;
  }

  Widget _prepareAllTab() {
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children: _generateSampleCards("Sample", 6),
    );
  }

  Widget _prepareAppsTab() {
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children: _generateSampleCards("Sample App", 4),
    );
  }

  Widget _prepareWebsitesTab() {
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children: _generateSampleCards("Sample Website", 4),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final onPress;
  final Widget firstWidget;
  final Widget secondWidget;

  const ProjectCard({
    this.onPress,
    required this.firstWidget,
    required this.secondWidget,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          hovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPress,
        child: AnimatedCrossFade(
          firstChild: Card(
            child: widget.firstWidget,
          ),
          layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
            return Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  key: bottomChildKey,
                  child: bottomChild,
                ),
                Positioned(
                  key: topChildKey,
                  child: topChild,
                ),
              ],
            );
          },
          secondChild: Card(
            color: Color(0xffFF0513),
            child: widget.secondWidget,
          ),
          duration: Duration(milliseconds: 400),
          crossFadeState:
              hovered ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ),
    );
  }
}
