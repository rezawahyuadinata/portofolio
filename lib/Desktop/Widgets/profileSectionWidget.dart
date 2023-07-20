import 'package:flutter/material.dart';
import 'package:portofolio/Desktop/Widgets/sub_widget/gambar.dart';

import '../../const.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
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
                painter: SubtittleContainer("About"),
              ),
            ),
            SizedBox(
              height: subtitlePadding,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: mainPadding * 1.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        '''
Saya lulus dengan gelar S1 Ilmu Komputer dari Universitas Gunadarma jurusan Sistem Informasi dengan IPK 3.10. Saya memiliki ketertarikan dan minat yang kuat dalam bidang IT, terutama sebagai Software Engineer. 

Dengan pengalaman dalam proyek dan kemampuan pemecahan masalah yang sangat baik, saya telah mempelajari berbagai teknologi dan bahasa pemrograman. Saya juga memiliki kemampuan dalam desain web dan pengembangan aplikasi. 

Saya percaya diri dapat memberikan kontribusi yang berharga dalam tim kerja dan memiliki manajemen waktu yang baik serta disiplin.
                    ''',
                        style: mainStyle,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      "assets/fotoprofil.jpg",
                      fit: BoxFit.contain,
                      width: 550,
                      height: MediaQuery.of(context).size.height,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
