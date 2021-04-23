import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class ProjectCard extends StatefulWidget {
  final String description;
  final String imageURL;
  final String? urlToLaunch;

  const ProjectCard({
    required this.description,
    required this.imageURL,
    this.urlToLaunch,
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
      child: InkWell(
        onTap: () {
          if (widget.urlToLaunch != null) launch(widget.urlToLaunch!);
        },
        child: AnimatedCrossFade(
          firstChild: Container(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Image.asset(widget.imageURL,
                  fit: widget.imageURL.contains("portfolio")
                      ? BoxFit.cover
                      : BoxFit.fitWidth,
                  alignment: widget.imageURL.contains("portfolio")
                      ? Alignment.centerLeft
                      : Alignment.center),
            ),
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
          secondChild: Container(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              color: kAccentColor.withOpacity(0.6),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: AutoSizeText(
                    widget.description,
                    maxLines: 5,
                    maxFontSize: 40,
                    style: kSampleTextStyle,
                  ),
                ),
              ),
            ),
          ),
          duration: Duration(milliseconds: 500),
          crossFadeState:
              hovered ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ),
    );
  }
}
