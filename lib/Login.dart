import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicoze/Constants.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  Constants constants = Get.put(Constants());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.BlueColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 500,
                width: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 15,
                  color: Colors.white,
                  child: Column(
                    children: [
                      /* ------------------------------- Login Feild ------------------------------ */
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Container(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.brown[200], fontSize: 30),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 15),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: Container(
                              child: Text(
                                "Forget Paswword?",
                                style: TextStyle(color: Colors.brown[200]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(child: Card(child: Text("Login"))),
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
