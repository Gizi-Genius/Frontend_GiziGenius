import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius/view/home.dart';
import 'package:gizi_genius/view/list.dart';
import 'package:gizi_genius/view/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gizi Genius',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyListView(),
    );
  }
}
