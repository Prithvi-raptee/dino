import 'package:dino/constant/clr.dart';
import 'package:dino/screen/home_bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OTPVerificationScreen extends StatelessWidget {
  OTPVerificationScreen({super.key});
  final OtpFieldController _otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 300,
              // margin: const EdgeInsets.symmetric(vertical: 200),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Clr.black.withOpacity(0.1),
                      Colors.red
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/image/bike_image2.png",
                      ),
                      fit: BoxFit.fitWidth,
                      colorFilter:
                          ColorFilter.mode(Clr.teal, BlendMode.color))),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Clr.black.withOpacity(0.1),
                      Clr.black.withOpacity(0.1),
                      Colors.black
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Enter Your 6 Digit OTP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 20,
                      ),
                      OTPTextField(
                          otpFieldStyle: OtpFieldStyle(
                              backgroundColor: Colors.white.withOpacity(0.1),
                              borderColor: Colors.white),
                          controller: _otpController,
                          length: 6,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 45,
                          fieldStyle: FieldStyle.underline,
                          outlineBorderRadius: 15,
                          style: TextStyle(fontSize: 17),
                          onChanged: (pin) {
                            print("Changed: " + pin);
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                          }),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Clr.teal2),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeBottomNavigationScreen()));
                              },
                              child: const Text(
                                "Verify OTP",
                                style: TextStyle(color: Clr.white),
                              )),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
