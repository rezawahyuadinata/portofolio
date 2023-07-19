import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Desktop/widget_tools/contactSectionWidget.dart';
import 'package:portofolio/Desktop/widget_tools/headsectionWidget.dart';
import 'package:portofolio/Desktop/widget_tools/profileSectionWidget.dart';
import 'package:portofolio/Desktop/widget_tools/projectSectionWidget.dart';
import 'package:portofolio/Desktop/widget_tools/skillSectionWidget.dart';
import 'package:portofolio/const.dart';

import 'widget_tools/tittleHeader.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: backgroundColor),
        child: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: mainPadding * 1.5,
            ),
            sliver: SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              expandedHeight: 60,
              snap: true,
              floating: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 313),
                        child: TittleHeader(
                          textHeader: "REZA WAHYU",
                          styleHeader: headerStyle,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TittleHeader(
                                textHeader: "Home",
                                styleHeader: subHeaderStyle),
                            TittleHeader(
                                textHeader: "About",
                                styleHeader: subHeaderStyle),
                            TittleHeader(
                                textHeader: "Skills",
                                styleHeader: subHeaderStyle),
                            TittleHeader(
                                textHeader: "Projects",
                                styleHeader: subHeaderStyle),
                            TittleHeader(
                                textHeader: "Contacts",
                                styleHeader: subHeaderStyle)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // head
                HeadSection(),
                // Profile
                ProfileSection(),
                // Skills
                SkillsSection(),
                // Project
                ProjectSection(),
                // Contact
                ContactSection(),
                // Bottom Navigation
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 28, 37, 65),
                  ),
                  child: Center(
                    child: Text(
                      "Design By Reza Wahyu Adinata",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
