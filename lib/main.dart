import 'package:flutter/material.dart';
import 'package:freecodecamp_flutter/pages/home_page.dart';
import 'package:freecodecamp_flutter/pages/home_page_with_fb.dart';
import 'package:freecodecamp_flutter/pages/login_page.dart';
import 'package:freecodecamp_flutter/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePageFB()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePageFB.routeName: (context) => HomePageFB(),
      },
    );
  }
}
