import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Desktop/widget_tools/garis.dart';
import '../const.dart';
import 'package:url_launcher/url_launcher.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mainPadding),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello, Nama Saya",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Reza Wahyu Adinata",
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Software Developer",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 57, 94, 102),
                      padding: const EdgeInsets.all(25),
                    ),
                    child: Text(
                      "Download CV",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/fotoprofil.jpg',
                  fit: BoxFit.cover,
                  height: 550.0,
                  width: 550.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 28, 37, 65),
        ),
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: mainPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 6),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.white, width: 5.0),
                  ),
                ),
                child: Text(
                  "PROFILE",
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: mainPadding),
                child: Text(
                  '''
    Hello, i\'m Reza Wahyu Adinata, I Graduated from Gunadarma University Majoring in Information System. I have interested about software development.
    
    I am a Software Develepor who usually builds application for Website or Android, I usually development my project with framework like  flutter and laravel to build a dynamic and responsive aplication.I like to make analysis in developing my program, to make the application better. 
    
    I also have an interest in the scope of servers which is also my target to learn so that I can expand my knowledge. I also enjoy discussing about technology development.''',
                  maxLines: 20,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/username.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Full Name",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Reza Wahyu Adinata",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/mail.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "E-Mail",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "adinatarezawahyu@gmail.com",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/linkedin.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "LinkedIn",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Reza Wahyu Adinata",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/telephone.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Telephone",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "+6281385484594",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                ),
                child: Text(
                  "Experience",
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/office.png',
                  width: 200,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Advanced Laboratory System Computer',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'University Of Gunadarma',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Jul 2020 - Mar 2022',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(
                            width: 3.0,
                            color: Colors.blue.shade100,
                          ),
                        ),
                        child: Text(
                          'Teach computer system students to create mobile-based applications, build network structures, and provide support services for students who want to ask technical questions.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GarisVertical(),
            Row(
              children: [
                Image.asset(
                  'assets/office.png',
                  width: 200,
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'IT Consultant',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Ministry of Public Works and Housing',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'May 2022 - Dec 2022',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                          border: Border.all(
                            width: 3.0,
                            color: Colors.blue.shade100,
                          ),
                        ),
                        child: Text(
                          'Responsible for developing risk management information system applications, maintaining the scope of the information system both applications and system servers, and serving assistance in using applications or complaints about application errors.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 28, 37, 65),
      ),
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mainPadding),
        child: Text(
          "Experience",
          style: GoogleFonts.poppins(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mainPadding),
        child: Text(
          "Experience",
          style: GoogleFonts.poppins(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 28, 37, 65),
      ),
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mainPadding),
        child: Text(
          "Experience",
          style: GoogleFonts.poppins(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
