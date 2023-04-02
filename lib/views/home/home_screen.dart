import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_galaxy/constants/color_constants.dart';
import 'package:liquid_galaxy/constants/text_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Galaxy App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h, right: 24.w, left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//================================== Logo Section ===================================
                Image.asset("assets/images/logo1.png", height: 90.h, width: 185.w,),
                SizedBox(height: 50.h,),

//===================== Red Text Section with TextButton =============================
                SizedBox(width: 180.w, height: 50.h,
                  child: TextButton(onPressed: (){},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(redButton),),
                    child: const TextBody(
                      text: "Red Button",
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),

//================== Yellow Button Section with Elevated Button ======================
                SizedBox(width: 180.w, height: 50.h,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: yellowButton,
                    ),
                    child: const TextBody(
                      text: "Yellow Button",
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),

//=================== Green Button Section with Container ============================
                GestureDetector(
                  onTap: (){},
                  child: Container(height: 50.h, width: 180.w,
                    decoration: BoxDecoration(color: greenButton,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: const Center(
                      child: TextBody(
                        text: "Green Button",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h,),

//================== Google Button Section with IconButton =========================
                IconButton(onPressed: (){},
                  icon: Image.asset("assets/icons/google.png", height: 300.h, width: 300.w,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}