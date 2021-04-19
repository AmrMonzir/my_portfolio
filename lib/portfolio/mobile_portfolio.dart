import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobilePortfolio extends StatefulWidget {
  final bool includeTopBar;

  const MobilePortfolio({required this.includeTopBar});
  @override
  _MobilePortfolioState createState() => _MobilePortfolioState();
}

class _MobilePortfolioState extends State<MobilePortfolio>
    with TickerProviderStateMixin {
  late TabController _tabController;
  Map<int, bool> tabSelected = {
    0: true,
    1: false,
    2: false,
  };

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          for (int i = 0; i < tabSelected.length; i++) {
            setState(() {
              tabSelected[i] = false;
            });
          }
          setState(() {
            tabSelected[_tabController.index] = true;
          });
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        toolbarHeight: 300.h,
        titleSpacing: 0,
        title: Column(
          children: [
            widget.includeTopBar
                ? Column(
                    children: [
                      SizedBox(height: 50.h),
                      TopBar(navIndex: 2),
                    ],
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Portfolio",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(width: 50.w),
                        Expanded(
                          child: Container(
                            color: kAccentColor,
                            height: 2.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            widget.includeTopBar ? SizedBox(height: 50.h) : Container(),
          ],
        ),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Text("All",
                style: TextStyle(
                    color: tabSelected[0]! ? kAccentColor : Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20)),
            AutoSizeText("Mobile apps",
                style: TextStyle(
                    color: tabSelected[1]! ? kAccentColor : Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20)),
            AutoSizeText("Websites",
                style: TextStyle(
                    color: tabSelected[2]! ? kAccentColor : Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            padding: EdgeInsets.all(30),
            children: _prepareAllTab(),
          ),
          ListView(
            padding: EdgeInsets.all(30),
            children: _prepareAppsTab(),
          ),
          ListView(
            padding: EdgeInsets.all(30),
            children: _prepareWebsitesTab(),
          ),
        ],
      ),
    );
  }

  List<Widget> _prepareAllTab() {
    return [
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25)
        ],
      ),
    ];
  }

  List<Widget> _prepareAppsTab() {
    return [
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample App",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample App",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample App",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    ];
  }

  List<Widget> _prepareWebsitesTab() {
    return [
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample Website",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25)
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample Website",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25)
        ],
      ),
      Column(
        children: [
          Container(
            height: 450.h,
            child: Card(
              child: Center(
                  child: Text(
                "Sample Website",
                style: TextStyle(color: Colors.black, fontSize: 100.sp),
              )),
            ),
          ),
          SizedBox(height: 25)
        ],
      ),
    ];
  }
}
