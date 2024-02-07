// ignore_for_file: unused_local_variable
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius/animation/up.dart';
import 'package:gizi_genius/view/login_page.dart';
// import 'package:gizi_genius/view/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Registrasi Gagal. Silakan coba lagi!'),
        action: SnackBarAction(
          label: 'Tutup',
          onPressed: () {},
        ),
      ));

      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInAnimation(
                  delay: 1,
                  child: Text(
                    "Register account",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
                SizedBox(height: 12),
                FadeInAnimation(
                  delay: 1.5,
                  child: Text(
                    'Keen on shedding some pounds, boosting\nenergy, or upgrading your eating habits? With\nclear goals, we can hook you up with spot-on recommendations',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xffD9D9D9)),
                  ),
                ),
                SizedBox(height: 52),
                FadeInAnimation(
                  delay: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8A8A8A).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          // controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Container(
                                margin: EdgeInsets.only(
                                    left: 12, right: 12, top: 12, bottom: 12),
                                padding: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.white))),
                                child: Icon(Icons.person, color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                FadeInAnimation(
                  delay: 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8A8A8A).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Container(
                                margin: EdgeInsets.only(
                                    left: 12, right: 12, top: 12, bottom: 12),
                                padding: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.white))),
                                child: Icon(Icons.email, color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                FadeInAnimation(
                  delay: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff8A8A8A).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _passwordController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Container(
                                margin: EdgeInsets.only(
                                    left: 12, right: 12, top: 12, bottom: 12),
                                padding: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.white))),
                                child: Icon(Icons.lock, color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                ),
                // TextField(
                //   controller: _emailController,
                //   decoration: InputDecoration(labelText: 'Email'),
                // ),
                // TextField(
                //   controller: _passwordController,
                //   decoration: InputDecoration(labelText: 'Password'),
                //   obscureText: true,
                // ),
                SizedBox(height: 52),
                FadeInAnimation(
                  delay: 3.5,
                  child: InkWell(
                    onTap: _register,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 56),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff7986CB),
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FadeInAnimation(
                  delay: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account,",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          " Login",
                          style: TextStyle(color: Color(0xff7986CB)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
