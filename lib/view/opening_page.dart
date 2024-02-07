import 'package:flutter/material.dart';
import 'package:gizi_genius/animation/up.dart';
import 'package:gizi_genius/view/form_page.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3F),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInAnimation(
              delay: 1,
              child: Text(
                "Bentar, sebelum mulai..",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            SizedBox(height: 8),
            FadeInAnimation(
              delay: 1.5,
              child: Text(
                "lengkapi Profile  km dulu ya  :) ",
                style: TextStyle(color: Color(0xffD9D9D9), fontSize: 14),
              ),
            ),
            SizedBox(height: 80),
            FadeInAnimation(
              delay: 2,
              child: InkWell(
                // onTap: _register,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => FormView()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 56),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff7986CB),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Oke, Gassken",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
