import 'package:flutter/material.dart';
import 'package:my_first_app/pages/Signup_page.dart';
import 'package:my_first_app/pages/alert_widget.dart';
import 'package:my_first_app/pages/button_page.dart';
import 'package:my_first_app/pages/container_properties.dart';
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/pages/practice_page.dart';
import 'package:my_first_app/pages/responsive_widget.dart';
import 'package:my_first_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   fontFamily: GoogleFonts.lato().fontFamily,
      // ),
      initialRoute: MyRoutes.practiceRoute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.containerRoute: (context) => const ContainerPage(),
        MyRoutes.signupRoute: (context) => const SignUpPage(),
        MyRoutes.buttonRoute: (context) => const ButtonTypes(),
        MyRoutes.responsiveRoute: (context) => const ResponsiveWidget(),
        MyRoutes.alertRoute: (context) => const AlertWidget(),
        MyRoutes.practiceRoute: (context) => const PracticePage(),
      },
    );
  }
}
