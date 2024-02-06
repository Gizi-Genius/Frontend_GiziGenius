import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius/fade_animaton.dart';
import 'package:gizi_genius/view/home.dart';
import 'package:gizi_genius/view/register_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(userCredential.user?.email ?? "")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Email atau Password Anda Salah!'),
        action: SnackBarAction(
          label: 'Tutup',
          onPressed: () {},
        ),
      ));

      print("Error: $e");
    }
  }

  Future<void> _googleSignIn() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(userCredential.user?.email ?? ""),
          ),
        );
      } else {
        print("Google Sign-In cancelled or failed.");
      }
    } catch (e) {
      print("Error during Google Sign-In: $e");
    }
  }

  Future<void> _resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(
        email: _emailController.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Email untuk reset password telah dikirim.'),
        action: SnackBarAction(
          label: 'Tutup',
          onPressed: () {},
        ),
      ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            'Gagal mengirim email reset password. Periksa kembali email Anda.'),
        action: SnackBarAction(
          label: 'Tutup',
          onPressed: () {},
        ),
      ));

      print("Error during password reset: $e");
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                FadeInAnimation(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                    delay: 1),
                SizedBox(height: 40),
                FadeInAnimation(
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
                  delay: 2,
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 40),
                FadeInAnimation(
                  delay: 4,
                  child: InkWell(
                    onTap: _login,
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
                  delay: 4.5,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Or",
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FadeInAnimation(
                  delay: 5,
                  child: InkWell(
                    onTap: _googleSignIn,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 56),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Brand(Brands.google),
                          SizedBox(width: 12),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: double.infinity,
                //   child: TextButton(
                //     onPressed: _resetPassword,
                //     child: Text('Forgot Password?'),
                //   ),
                // ),
                SizedBox(height: 32),
                FadeInAnimation(
                  delay: 5.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account yet? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Register now!",
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
