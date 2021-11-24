import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
              headline1: GoogleFonts.montserrat(
                  fontSize: 45,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff31263E)),
              bodyText1: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff31263E)))),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 40, right: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Email", style: Theme.of(context).textTheme.bodyText1),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Email"),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
                SizedBox(height: 30),
                Text("Or"),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.google),
                        label: Text("")),
                    SizedBox(width: 10),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.facebook),
                        label: Text("")),
                    SizedBox(width: 10),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.twitter),
                        label: Text("")),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class SuccessfulLogin extends StatelessWidget {
  const SuccessfulLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("Congrats, you're in",style: TextStyle(fontSize: 50),)
      )
    );
  }
}

