import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Desktop/widget.dart';
import 'package:portofolio/const.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    void initState() {
      super.initState();

      scrollController.addListener(() {
        setState(() {});
      });
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.jpg"), fit: BoxFit.fill),
        ),
        child: CustomScrollView(slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: mainPadding,
            ),
            sliver: SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              expandedHeight: 60,
              // animasi transisi appbar
              snap: true,
              // animasi scrolling ke atas untuk melihat appbar
              floating: true,
              // animasi ketika membuat app bar menadi fixed
              // pinned: true,
              backgroundColor: scrollController.hasClients &&
                      scrollController.position.minScrollExtent == true
                  ? Colors.transparent
                  : Colors.black87,
              flexibleSpace: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: mainPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            "REZAWAHYU",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 500,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Profile",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Experience",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Education",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Project",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Contact",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
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
                // Experience
                ExperienceSection(),
                // Education
                EducationSection(),
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
