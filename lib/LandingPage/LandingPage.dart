import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth>992){
          return DesktopLandingPage();
        } else {
          return MobileLandingPage();
        }
      }
    );
  }
}

class DesktopLandingPage extends StatelessWidget {
  const DesktopLandingPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, // Full-screen height (100vh)
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15.0),
              child: Image.asset(
                "assets/images/Smartsprint-logo.png",
                width: screenWidth * 0.4,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                  borderRadius: const BorderRadius.all(Radius.circular(30.0))
                ),
                child: const Text("08\u1d57\u02b0 October 2024  -  11\u1d57\u02b0 October 2024",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text("Top 15 Winners Get a",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Pre-Placement Interview",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15.0),
              child: MaterialButton(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
                ),
                onPressed: (){
                  context.go('/register');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: Color.fromRGBO(28, 10, 103, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Already Registered? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: "Login Here.",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to login page
                          context.go('/login');
                        },
                    ),
      
                  ],
                ),
              ),
            ),
      
          ],
        ),
      );
  }


}

class MobileLandingPage extends StatelessWidget {
  const MobileLandingPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, // Full-screen height (100vh)
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15.0),
              child: Image.asset(
                "assets/images/Smartsprint-logo.png",
                width: screenWidth * 0.8,
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
                  borderRadius: const BorderRadius.all(Radius.circular(30.0))
                ),
                child: const Text("08\u1d57\u02b0 October 2024  -  11\u1d57\u02b0 October 2024",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text("Top 15 Winners Get a",
                style: TextStyle(
                  color: Colors.white,
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Pre-Placement Interview",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15.0),
              child: MaterialButton(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
                ),
                onPressed: (){
                  context.go('/register');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: Color.fromRGBO(28, 10, 103, 1.0),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Already Registered? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: "Login Here.",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to login page
                          context.go('/login');
                        },
                    ),
      
                  ],
                ),
              ),
            ),
      
          ],
        ),
      );
  }


}