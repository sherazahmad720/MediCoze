import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medicoze/Constants.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 600,
                width: 350,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 15,
                  color: frontClr,
                  child: Column(
                    children: [
                      /* ------------------------------- Login Feild ------------------------------ */
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Container(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: fontClr,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 20, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      /* -------------------------------- Password Feild -------------------------------- */
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 20, right: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye_rounded),
                                onPressed: () {},
                              ),
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                      /* ----------------------------- Forget Password ---------------------------- */
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: Container(
                              child: Text(
                                "Forget Paswword?",
                                style: TextStyle(color: fontClr),
                              ),
                            ),
                          ),
                        ),
                      ),
                      /* ------------------------------ Login Button ------------------------------ */
                      InkWell(
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: fontClr,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 130, vertical: 10),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: frontClr,
                                    fontSize: 26,
                                  ),
                                ),
                              ))),
                      Text(
                        "or",
                        style: TextStyle(color: fontClr, fontSize: 20),
                      ),
                      /* --------------------------- SignIn with Google/facebook --------------------------- */
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                              margin: EdgeInsets.only(
                                  bottom: 10, right: 10, left: 10),
                              child: Row(children: [
                                Text(
                                  "Log In With:",
                                  style: TextStyle(
                                      color: fontClr,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    icon: Icon(
                                      FontAwesome.facebook,
                                      color: fontClr,
                                    ),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(
                                      FontAwesome.google,
                                      color: fontClr,
                                    ),
                                    onPressed: () {})
                              ]))),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Text(
                              "Don't have an account? ",
                            ),
                            InkWell(
                                child: Text(
                              "SignUp",
                              style: TextStyle(color: fontClr),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
