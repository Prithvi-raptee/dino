import 'package:dino/constant/clr.dart';
import 'package:dino/screen/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
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
                  margin: const EdgeInsets.only(bottom: 50),
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Enter Mobile No.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 40,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1)),
                              child: const Center(child: Text("+91"))),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1)),
                            child: Center(
                              child: TextField(
                                //
                                controller: _phoneNumberController,
                                scrollPadding: EdgeInsets.zero,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 10),
                                    hintText: "Number",
                                    hintStyle: TextStyle(),
                                    border: InputBorder.none),

                                onChanged: (value) {},
                              ),
                            ),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
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
                                            OTPVerificationScreen()));
                              },
                              child: const Text(
                                "Send OTP",
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
