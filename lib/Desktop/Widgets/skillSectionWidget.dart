import 'package:flutter/material.dart';

import '../../const.dart';
import 'sub_widget/gambar.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 300,
              height: 100,
              child: CustomPaint(
                size: Size(200, 200),
                painter: SubtittleContainer("Skills"),
              ),
            ),
            SizedBox(
              height: subtitlePadding,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: mainPadding * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Front End Tools"),
                                ),
                                Container(
                                  child: Text(""),
                                ),
                                Row(
                                  children: [
                                    Container(),
                                    Container(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("Front End Tools"),
                                ),
                                Container(
                                  child: Text(""),
                                ),
                                Row(
                                  children: [
                                    Container(),
                                    Container(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Placeholder(),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconPhoto extends StatelessWidget {
  const IconPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          "assets/icons/docker.png",
          width: 300,
          height: 300,
        ),
        Container(
          child: Text(
            "Docker",
            style: mainStyle,
          ),
        )
      ],
    );
  }
}
