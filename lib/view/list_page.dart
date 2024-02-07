import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius/animation/left.dart';
import 'package:gizi_genius/animation/up.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3F),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInAnimation(
              delay: 1,
              child: Text(
                "Menu",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            FadeInAnimation(
              child: Divider(),
              delay: 2,
            ),
            SizedBox(height: 16),
            FadeInAnimation(
              delay: 3,
              child: TextField(
                style: TextStyle(color: Color(0xff9B9B9B)),
                decoration: InputDecoration(
                    hintText: "Search..",
                    hintStyle: TextStyle(color: Color(0xff9B9B9B)),
                    contentPadding: EdgeInsets.all(4),
                    prefixIcon: Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child: const Icon(
                        CupertinoIcons.search,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff9B9B9B), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    // Mengatur warna border pada normal state
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff9B9B9B), width: 2),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return LeftAnimation(
                    delay: 2,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          width: double.infinity,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Row(
                            children: [
                              Container(
                                width: 129,
                                height: 103,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage("assets/dada.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ayam Panggang - Tanpa Minyak",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 12),
                                  Row(
                                    children: [
                                      Text(
                                        "Kalori: 200 Kcal",
                                        style: TextStyle(
                                          color: Color(0xff9B9B9B),
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        "Jumlah: 1",
                                        style: TextStyle(
                                          color: Color(0xff9B9B9B),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Protein: 20 g",
                                    style: TextStyle(
                                      color: Color(0xff9B9B9B),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Karbo: 3 g",
                                    style: TextStyle(
                                      color: Color(0xff9B9B9B),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 284,
                          top: 78.5,
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Color(0xff7986CB),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 35,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
