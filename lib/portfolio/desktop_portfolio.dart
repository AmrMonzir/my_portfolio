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
                      !widget.includeTopBar
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    MaterialButton(
                                        shape: CircleBorder(
                                            side: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.5))),
                                        onPressed: () {
                                          for (int i = 0;
                                              i < tabSelected.length;
                                              i++)
                                            setState(() {
                                              tabSelected[i] = false;
                                            });
                                          setState(() {
                                            tabSelected[--currTab] = true;
                                          });
                                        },
                                        padding: EdgeInsets.all(30),
                                        child: Icon(
                                            Icons.arrow_back_ios_outlined,
                                            color: Colors.white,
                                            size: 20)),
                                    SizedBox(width: 20.w),
                                    MaterialButton(
                                        shape: CircleBorder(
                                            side: BorderSide(
                                                color: Colors.white
                                                    .withOpacity(0.5))),
                                        onPressed: () {
                                          for (int i = 0;
                                              i < tabSelected.length;
                                              i++)
                                            setState(() {
                                              tabSelected[i] = false;
                                            });
                                          setState(() {
                                            tabSelected[++currTab] = true;
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
                                    Navigator.of(context)
                                        .pushNamed("/portfolio");
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
                                      for (int i = 0;
                                          i < tabSelected.length;
                                          i++)
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
                                            color:
                                                Colors.white.withOpacity(0.5))),
                                    onPressed: () {
                                      for (int i = 0;
                                          i < tabSelected.length;
                                          i++)
                                        setState(() {
                                          tabSelected[i] = false;
                                        });
                                      setState(() {
                                        tabSelected[++currTab] = true;
                                      });
                                    },
                                    padding: EdgeInsets.all(30),
                                    child: Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        color: Colors.white,
                                        size: 20)),
                              ],
                            ),
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
                  Expanded(child: _prepareBottomWidget()),
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

  Widget _prepareAllTab() {
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children: !widget.includeTopBar
          ? (kAppCards + kWebCards).getRange(0, 3).toList()
          : kAppCards + kWebCards,
    );
  }

  Widget _prepareAppsTab() {
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children:
          !widget.includeTopBar ? kAppCards.getRange(0, 3).toList() : kAppCards,
    );
  }

  Widget _prepareWebsitesTab() {
    var webCards3 =
        kWebCards.length >= 3 ? kWebCards.getRange(0, 3).toList() : kWebCards;
    return GridView.count(
      mainAxisSpacing: 108.h,
      crossAxisCount: 3,
      crossAxisSpacing: 114.w,
      padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
      children: !widget.includeTopBar ? webCards3 : kWebCards,
    );
  }
}
