import 'package:flutter/material.dart';
import 'package:mbooking/shared/theme.dart';

class AuthChoicePage extends StatelessWidget {
  const AuthChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            Spacer(),
            contenSection(),
            ButtonSignIn(),
            buttonSignUp(),
            termAndCondition()
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Image.asset(
      "assets/image/logo.png",
      height: 36,
    );
  }

  Widget contenSection() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 329,
            width: 329,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/avengers.png"))),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            "MBooking hello!",
            style: whiteTextstyle.copyWith(fontSize: 32, fontWeight: bold),
          ),
          Text(
            "Enjoy your favorite movies",
            style: whiteTextstyle.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: greyLightColor,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ClipOval(
                child: Container(
                  height: 8,
                  width: 8,
                  color: greyLightColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buttonSignUp() {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign up",
          style: whiteTextstyle.copyWith(fontSize: 20, fontWeight: bold),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: blackColor,
            minimumSize: const Size(
              double.infinity,
              56,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: whiteColor, width: 1))),
      ),
    );
  }

  Widget ButtonSignIn() {
    return Container(
      padding: EdgeInsets.only(top: 46),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign in",
          style: blackTextstyle.copyWith(fontSize: 20, fontWeight: bold),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            minimumSize: const Size(
              double.infinity,
              56,
            )),
      ),
    );
  }

  Widget termAndCondition() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 32, bottom: 32),
        child: SizedBox(
          width: 290,
          child: Text(
            "By sign in or sign up, you agree to our Terms of Service and Privac y Policy",
            style: greyTextstyle.copyWith(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
