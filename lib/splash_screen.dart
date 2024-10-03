import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_receipe_app/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  //for set a timer
  startTimer() async {
    Timer(const Duration(seconds: 5), () {

      //for one time page view, no back button available in next page when use it
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
      

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Center(
       child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/recipe_logo.png",
            width: 200,
            height: 200,),
            const SizedBox(height: 10,),
            Text("My Recipe",
                style: GoogleFonts.acme(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                ),),
            const SizedBox(height: 10,),
            const CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          ],
        ),
     ),
    );
  }
}
