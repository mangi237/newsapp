import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yarn/authentication/auth.dart';
import 'package:yarn/authentication/singinorlogin.dart';
// import 'package:yarn/authentication/sign_in.dart';
import 'package:yarn/pages/app_home.dart';
import 'package:yarn/pages/home.dart';
import 'package:yarn/pages/login.dart';
import 'package:yarn/pages/new_home.dart';
import 'package:yarn/pages/register.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MyHomePage(),));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
            super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'Geestables',
                    style: GoogleFonts.getFont('DM Sans')
                        .copyWith(color:Colors.white,fontSize:30, fontWeight: FontWeight.w600),
                  ),
                ),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
