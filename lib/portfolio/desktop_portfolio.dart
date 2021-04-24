import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/top_bar.dart';

class DesktopPortfolio extends StatefulWidget {
  final bool includeTopBar;

  const DesktopPortfolio({required this.includeTopBar});

  @override
  _DesktopPortfolioState createState() => _DesktopPortfolioState();
}

class _DesktopPortfolioState extends State<DesktopPortfolio> {
  int currTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.includeTopBar ? TopBar(navIndex: 2) : Container(),
        Flexible(
          fit: FlexFit.loose,
          child: Padding(
            padding: EdgeInsets.fromLTRB(94.w, 30.h, 94.w, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                                fontSize: 50, fontWeight: FontWeight.w300),
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
                    !widget.includeTopBar
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 30.h),
                              Row(
                                children: [
                                  MaterialButton(
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Colors.white
                                                  .withOpacity(0.5))),
                                      onPressed: () {
                                        if (currTab > 0)
                                          setState(() {
                                            currTab--;
                                          });
                                      },
                                      padding: EdgeInsets.all(30),
                                      child: Icon(Icons.arrow_back_ios_outlined,
                                          color: Colors.white, size: 20)),
                                  SizedBox(width: 20.w),
                                  MaterialButton(
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Colors.white
                                                  .withOpacity(0.5))),
                                      onPressed: () {
                                        if (currTab < 2)
                                          setState(() {
                                            currTab++;
                                          });
                                      },
                                      padding: EdgeInsets.all(30),
                                      child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white,
                                          size: 20)),
                                ],
                              ),
                              SizedBox(height: 22.h),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/portfolio");
                                },
                                child: Row(
                                  children: [
                                    Text("See all  ",
                                        style: TextStyle(fontSize: 25)),
                                    Icon(Icons.arrow_forward,
                                        size: 30, color: Colors.white)
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              MaterialButton(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  onPressed: () {
                                    if (currTab > 0)
                                      setState(() {
                                        currTab--;
                                      });
                                  },
                                  padding: EdgeInsets.all(30),
                                  child: Icon(Icons.arrow_back_ios_outlined,
                                      color: Colors.white, size: 20)),
                              SizedBox(width: 20.w),
                              MaterialButton(
                                  shape: CircleBorder(
                                      side: BorderSide(
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                  onPressed: () {
                                    if (currTab < 2)
                                      setState(() {
                                        currTab++;
                                      });
                                  },
                                  padding: EdgeInsets.all(30),
                                  child: Icon(Icons.arrow_forward_ios_outlined,
                                      color: Colors.white, size: 20)),
                            ],
                          ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          currTab = 0;
                        });
                      },
                      child: FittedBox(
                        child: Text("All",
                            style: TextStyle(
                                color:
                                    currTab == 0 ? kAccentColor : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30)),
                      ),
                    ),
                    SizedBox(width: 30.w),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          currTab = 1;
                        });
                      },
                      child: FittedBox(
                        child: Text("Apps",
                            style: TextStyle(
                                color:
                                    currTab == 1 ? kAccentColor : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30)),
                      ),
                    ),
                    SizedBox(width: 30.w),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          currTab = 2;
                        });
                      },
                      child: FittedBox(
                        child: Text("Websites",
                            maxLines: 1,
                            style: TextStyle(
                                color:
                                    currTab == 2 ? kAccentColor : Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 30)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                _prepareBottomWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _prepareBottomWidget() {
    if (currTab == 0)
      return _prepareAllTab();
    else if (currTab == 1)
      return _prepareAppsTab();
    else if (currTab == 2)
      return _prepareWebsitesTab();
    else
      return Container();
  }

  Widget _prepareAllTab() {
    var all = kAppCards + kWebCards;
    return !widget.includeTopBar
        ? Column(
            children: [
              SizedBox(height: 40.h),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: all[0],
                  ),
                  SizedBox(width: 114.w),
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: all[1],
                  ),
                  SizedBox(width: 114.w),
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: all[2],
                  ),
                ],
              ),
            ],
          )
        : Expanded(
            child: GridView.count(
              mainAxisSpacing: 108.h,
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 114.w,
              padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
              children: all,
            ),
          );
  }

  Widget _prepareAppsTab() {
    return !widget.includeTopBar
        ? Column(
            children: [
              SizedBox(height: 40.h),
              Row(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: kAppCards[0],
                  ),
                  SizedBox(width: 114.w),
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: kAppCards[1],
                  ),
                  SizedBox(width: 114.w),
                  ConstrainedBox(
                    constraints: BoxConstraints.loose(Size(500.w, 505.h)),
                    child: kAppCards[2],
                  ),
                ],
              ),
            ],
          )
        : Expanded(
            child: GridView.count(
              mainAxisSpacing: 108.h,
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 114.w,
              padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
              children: kAppCards,
            ),
          );
  }

  Widget _prepareWebsitesTab() {
    var webCards3 =
        kWebCards.length >= 3 ? kWebCards.getRange(0, 3).toList() : kWebCards;
    List<Widget> cardsToDisplay = [];
    for (var i in webCards3) {
      cardsToDisplay.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 57.w),
        child: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(500.w, 505.h)),
          child: i,
        ),
      ));
    }
    return !widget.includeTopBar
        ? Column(
            children: [
              SizedBox(height: 40.h),
              Column(
                children: cardsToDisplay,
              ),
            ],
          )
        : Expanded(
            child: GridView.count(
              mainAxisSpacing: 108.h,
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 114.w,
              padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
              children: kWebCards,
            ),
          );
  }
}
