import 'package:flutter/material.dart';
import 'package:gizi_genius/animation/bottom.dart';
import 'package:gizi_genius/animation/left.dart';
import 'package:gizi_genius/animation/right.dart';
import 'package:gizi_genius/animation/up.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00152B),
      appBar: AppBar(
          backgroundColor: Color(0xff001F3F),
          title: LeftAnimation(
            delay: 1,
            child: Text(
              "My Profile",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: LeftAnimation(
                delay: 1,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/profil.png'),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Maulana Khairuman",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "maulanakhairuman2004@gmail.com",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            FadeInAnimation(delay: 1, child: Divider()),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RightAnimation(
                    delay: 1,
                    child: Column(
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Laki-Laki",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Target",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "Turunin Berat Badan",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berat Badan",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "68 Kg",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tinggi Badan",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "174 Cm",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Umur",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "19 Thn",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  BottomAnimation(
                    delay: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff7986CB),
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log-Out',
                            style: TextStyle(
                                color: Color(0xffF8F8F8),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.logout,
                            color: Color(0xffF8F8F8),
                          )
                        ],
                      ),
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
