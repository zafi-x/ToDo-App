import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
// import 'package:todo_list_app/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/ui/onbording/welcome.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingSlider(
        headerBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
        pageBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
        // finishButtonText: 'GET STARTED',
        // finishButtonStyle: const FinishButtonStyle(
        //   backgroundColor: const Color.fromARGB(255, 136, 117, 255),
        // ),
        addButton: false,
        skipTextButton: Text(
          'Skip',
          style: GoogleFonts.lato(color: Colors.white54, fontSize: 20),
        ),
        trailing: Text('Login',
            style: GoogleFonts.lato(color: Colors.white54, fontSize: 20)),
        background: [
          Container(
            height: 370,
            width: 220.h,
            // color: Colors.amber,
            alignment: Alignment(10, 10),
            child: SizedBox(
              height: 270.h,
              width: 280,
              child: Image.asset(
                'assets/on_bording/ob1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 370,
            width: 220.h,
            // color: Colors.amber,
            alignment: Alignment(10, 10),
            child: SizedBox(
              height: 270.h,
              width: 280,
              child: Image.asset(
                'assets/on_bording/ob2.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 370,
            width: 220.h,
            // color: Colors.amber,
            alignment: Alignment(10, 10),
            child: SizedBox(
              height: 270.h,
              width: 280,
              child: Image.asset(
                'assets/on_bording/ob3.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
        totalPage: 3,
        speed: 2.0,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Manage your tasks',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'You can easily manage all of you\n     daily tasks in DoMe for free',
                  style: GoogleFonts.lato(
                      color: Colors.white70,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Create daily routine',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'In Uptodo you can create your\nown routine to stay productive',
                  style: GoogleFonts.lato(
                      color: Colors.white70,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Organize your tasks',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'You can easily organize all of you\n     daily tasks in DoMe for free',
                  style: GoogleFonts.lato(
                      color: Colors.white70,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomeScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 100, 120, 255),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'GET  STARTED',
                        style: GoogleFonts.lato(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
