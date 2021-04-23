import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/my_drawer.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class MobilePortfolio extends StatefulWidget {
  final bool inHome;

  const MobilePortfolio({required this.inHome});
  @override
  _MobilePortfolioState createState() => _MobilePortfolioState();
}

class _MobilePortfolioState extends State<MobilePortfolio>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int tabSelected = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() {
          tabSelected = _tabController.index;
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
          automaticallyImplyLeading: widget.inHome ? false : true,
          elevation: widget.inHome ? 0 : 4,
          centerTitle: true,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Portfolio",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
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
              widget.inHome ? SizedBox(height: 50.h) : Container(),
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Text("All",
                  style: TextStyle(
                      color: tabSelected == 0 ? kAccentColor : Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),
              AutoSizeText("Apps",
                  style: TextStyle(
                      color: tabSelected == 1 ? kAccentColor : Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),
              AutoSizeText("Websites",
                  style: TextStyle(
                      color: tabSelected == 2 ? kAccentColor : Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),
            ],
          ),
          toolbarHeight: 200.h),
      drawer: MyDrawer(indexSelected: 2),
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
    var allApps = _prepareAppsTab();
    var allWebsites = _prepareWebsitesTab();
    allApps.addAll(allWebsites);
    return allApps;
  }

  List<Widget> _prepareAppsTab() {
    return [
      PortfolioCard(
          imageURL: "assets/images/my_sources/banner.png",
          urlToLaunch:
              "https://play.google.com/store/apps/details?id=com.amrmonzir.my_sources"),
      PortfolioCard(
          imageURL: "assets/images/munchy/logo.jpg",
          urlToLaunch: "https://github.com/AmrMonzir/munchy"),
      PortfolioCard(
          imageURL: "assets/images/compagno/logo.jpg",
          urlToLaunch: "https://github.com/AmrMonzir/sample_compagno"),
      PortfolioCard(imageURL: "assets/images/bmi/screenshot.jpg"),
      PortfolioCard(imageURL: "assets/images/weather/screenshot.jpg"),
      PortfolioCard(imageURL: "assets/images/flash_chat/logo.jpg"),
      PortfolioCard(imageURL: "assets/images/health_tracker/screenshot.jpg"),
    ];
  }

  List<Widget> _prepareWebsitesTab() {
    return [
      PortfolioCard(
        imageURL: "assets/images/portfolio.JPG",
        urlToLaunch: "https://amrmonzir.github.io/",
      )
    ];
  }
}

class PortfolioCard extends StatelessWidget {
  final String imageURL;
  final String? urlToLaunch;

  const PortfolioCard({required this.imageURL, this.urlToLaunch});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 450.h,
          width: double.infinity,
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
                onTap: () {
                  if (urlToLaunch != null) launch(urlToLaunch!);
                },
                child: Image.asset(imageURL,
                    fit: imageURL.contains("portfolio")
                        ? BoxFit.cover
                        : BoxFit.fitWidth)),
          ),
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
