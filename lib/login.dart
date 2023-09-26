import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EBFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              height: 125,
              child: Image.asset(
                "../images/10K.png",
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 126,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  CredentialsText(
                    label: "Email",
                    prefixIcon: Icons.email,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 126,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  CredentialsText(
                    label: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.visibility,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
            Button(
              label: "Login",
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 28, right: 28),
              child: Row(
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CredentialsText extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  CredentialsText({this.label = '', required this.prefixIcon, this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            filled: true,
            isDense: true,
            fillColor: Color(0xFFE4E4E4),
            hintText: label,
            suffixIcon: Icon(suffixIcon),
            hintStyle: TextStyle(
              fontSize: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Function onPressed;
  final String label;
  Button({required this.onPressed, this.label = ""});
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () => onPressed(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF20256B),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
              child: Text(
            label,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
        ));
  }
}
