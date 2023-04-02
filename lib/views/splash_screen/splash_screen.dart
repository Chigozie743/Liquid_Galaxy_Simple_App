import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_galaxy/constants/navigator_constant.dart';
import 'package:liquid_galaxy/views/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      nextScreenReplace(context, const HomeScreen());
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 70.0, width: 90.0,),
                  const SizedBox(height: 30,),
                  if(defaultTargetPlatform == TargetPlatform.iOS)
                    CupertinoActivityIndicator(
                      color: Colors.white,
                      radius: 20.r,
                    )
                  else
                    const CircularProgressIndicator(
                      color: Colors.white,
                    ),

                  SizedBox(height: 200.h,),

                  Image.asset('assets/icons/google.png', height: 34.0, width: 85.0,),

                  SizedBox(height: 14.h,),

                  const Text(
                    "GSoC",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}