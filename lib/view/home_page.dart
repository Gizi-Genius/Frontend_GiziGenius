import 'package:flutter/material.dart';
import 'package:gizi_genius/animation/left.dart';
import 'package:gizi_genius/animation/up.dart';
import 'package:gizi_genius/chart_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  final String userEmail;

  const HomePage(this.userEmail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3F),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              FadeInAnimation(
                delay: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hai, Maulana K",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF)),
                    ),
                    Icon(
                      Icons.message,
                      color: Color(0xffFFFFFF),
                      size: 30,
                    )
                  ],
                ),
              ),
              FadeInAnimation(
                delay: 1.5,
                child: Text(
                  "Lihat perhitungan kalori mu",
                  style: TextStyle(fontSize: 13, color: Color(0xffFFFFFF)),
                ),
              ),
              SizedBox(height: 16),
              FadeInAnimation(
                delay: 2,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color(0xff001F3F),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(3, 3)),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Text(
                              'Sisa = Target - Makanan + Latihan',
                              style: TextStyle(
                                color: Color(0xFF9A9A9A),
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 20),
                            CircularPercentIndicator(
                              backgroundColor: Color(0xff747474),
                              radius: 80,
                              animationDuration: 1,
                              lineWidth: 13.0,
                              animation: true,
                              percent: 0.45,
                              center: Text(
                                "Kalori yang dimakan \n45 Kcal",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Color(0xffFDA015),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border(
                                      left: BorderSide(
                                        width: 2,
                                        color: Color(0xFFFDA015),
                                      ),
                                      top: BorderSide(
                                        width: 2,
                                        color: Color(0xFFFDA015),
                                      ),
                                      bottom: BorderSide(
                                        width: 2,
                                        color: Color(0xFFFDA015),
                                      ),
                                      // width: 2,
                                      // color: Color(0xFFFDA015),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Target',
                                            style: TextStyle(
                                              color: Color(0xFFF8F8F8),
                                              fontSize: 11,
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '2000 Kcal',
                                            style: TextStyle(
                                              color: Color(0xFF9A9A9A),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Sisa',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFFF8F8F8),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '1965 Kcal',
                                            style: TextStyle(
                                              color: Color(0xFF9A9A9A),
                                              fontSize: 12,
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(height: 48),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Karbo',
                                      style: TextStyle(
                                        color: Color(0xFFF8F8F8),
                                        fontSize: 11,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '2000 g',
                                      style: TextStyle(
                                        color: Color(0xFF9A9A9A),
                                        fontSize: 12,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Karbo',
                                        style: TextStyle(
                                          color: Color(0xFFF8F8F8),
                                          fontSize: 11,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '2000 g',
                                        style: TextStyle(
                                          color: Color(0xFF9A9A9A),
                                          fontSize: 12,
                                          fontFamily: 'Ubuntu',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 44),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Karbo',
                                    style: TextStyle(
                                      color: Color(0xFFF8F8F8),
                                      fontSize: 11,
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '2000 g',
                                    style: TextStyle(
                                      color: Color(0xFF9A9A9A),
                                      fontSize: 12,
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              FadeInAnimation(
                delay: 2,
                child: Text(
                  "Progres",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF)),
                ),
              ),
              SizedBox(height: 16),
              LeftAnimation(delay: 2, child: LinePage()),
              // Text('Selamat datang, $userEmail!'),
              // SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () async {
              //     await FirebaseAuth.instance.signOut();
              //   },
              //   child: Text('Logout'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
