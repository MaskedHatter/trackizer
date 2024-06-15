import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackizer/core/util/user_details.dart';
import 'package:trackizer/features/authentication/domain/usecase/authenticate_email_usecase.dart';
import 'package:trackizer/features/authentication/domain/usecase/authenticate_google_usecase.dart';
import 'package:trackizer/injection_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Image.asset(
              'assets/images/welcomescreen.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0.133.sh,
            child: SizedBox(
              //height: 1.sh,
              // width: 1.sw,
              child: Image.asset(
                'assets/images/blubleft.png',
                fit: BoxFit.cover,
                scale: 0.93,
              ),
            ),
          ),
          Positioned(
            top: 0.49.sh,
            right: 0,
            child: SizedBox(
              //height: 1.sh,
              // width: 1.sw,
              child: Image.asset(
                'assets/images/blubright.png',
                fit: BoxFit.cover,
                scale: 0.93,
              ),
            ),
          ),
          Positioned(
            top: 0.395.sh,
            right: 0.07.sw,
            child: SizedBox(
              //height: 1.sh,
              // width: 1.sw,
              child: Image.asset(
                'assets/images/spotify.png',
                fit: BoxFit.cover,
                scale: 3.7,
              ),
            ),
          ),
          //////////////////////////////////////////////////////////////
          SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                SizedBox(
                  height: 0.22.sh,
                  width: 1.sw,
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/trackizerlogo.svg',
                      height: 25.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.sh,
                ),
                SizedBox(
                    width: 270.w,
                    child: const Text(
                      'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(
                  height: 0.04.sh,
                ),
                InkWell(
                    onTap: () {
                      sl<AuthenticateEmailUseCase>().call(
                          param: UserDetails(
                              email: 'd1rotimi@gmail.com', password: '1234'));
                    },
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(30.r),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 236, 193, 94),
                           
                                  Color.fromARGB(255, 251, 147, 87),
                                  
                                  
                                ],
                                begin: Alignment(-0.2, -0.4), // Start from left
                                end: Alignment(0.3, 1.0),
                                transform: GradientRotation(pi / 3.1)),
                            //color: Color.fromARGB(255, 41, 41, 41),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.r))
                            //borderRadius: BorderRadius.circular(20.r)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.5),
                          child: Container(
                              height: 40.h,
                              width: 310.w,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color(0xFFFF7F37),
                                        blurRadius: 2,
                                        spreadRadius: 0.1),
                                    BoxShadow(
                                        color: Color.fromARGB(255, 251, 147, 87),
                                        blurRadius: 20,
                                        spreadRadius: 0.1,
                                        blurStyle: BlurStyle.inner)
                                  ],
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 241, 123, 54),
                                      Color.fromARGB(255, 229, 155, 130),
                                      Color(0xFFFF7F37)
                                    ],
                                    tileMode: TileMode.clamp,
                                    begin: AlignmentDirectional.bottomCenter,
                                    end: AlignmentDirectional.topCenter,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.r))
                                  //borderRadius: BorderRadius.circular(20.r)
                                  ),
                              child: Center(
                                  child: Text(
                                'Get started',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    shadows: const [
                                      Shadow(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          blurRadius: 0.5)
                                    ]),
                              ))),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 0.02.sh,
                ),
                InkWell(
                    onTap: () {},
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.transparent,
                      child: Container(
                        //color: Colors.amber,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 67, 67, 67),
                                  Color.fromARGB(75, 49, 49, 49),
                                  
                                ],
                                begin: Alignment(-0.2, -0.4), // Start from left
                                end: Alignment(0.3, 1.0),
                                transform: GradientRotation(pi / 3.1)),
                            //color: Color.fromARGB(255, 41, 41, 41),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.r))
                            //borderRadius: BorderRadius.circular(20.r)
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Container(
                              height: 41.h,
                              width: 310.w,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 44, 44, 44),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.r))
                                  //borderRadius: BorderRadius.circular(20.r)
                                  ),
                              child: Center(
                                  child: Text(
                                'I have an account',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    shadows: const [
                                      // Shadow(
                                      //     color: Color.fromARGB(255, 255, 255, 255),
                                      //     blurRadius: 0.5)
                                    ]),
                              ))),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}


