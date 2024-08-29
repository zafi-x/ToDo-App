import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:todo_list_app/main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(200, 18, 18, 18),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white70,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              child: Center(
                child: Text(
                  'Welcome to UpTodo',
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 33.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Please login to your account or create\n            new account to continue',
              style: GoogleFonts.lato(
                  color: Colors.white38,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 300.h,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => WelcomeScreen(),
                //   ),
                // );
              },
              child: Container(
                height: 40.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 100, 120, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.lato(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => WelcomeScreen(),
                //   ),
                // );
              },
              child: Container(
                height: 40.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 100, 120, 255),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color.fromARGB(255, 100, 120, 255),
                  ),
                ),
                child: Center(
                  child: Text(
                    'CREATE ACCOUNT',
                    style: GoogleFonts.lato(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
