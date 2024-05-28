import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  bool changeIcon = false;
  bool passwordVisible = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //color: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Image.asset("assets/images/login_image.png"),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 45.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                          prefixIcon: Icon(Icons.account_circle_rounded),
                        ),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: passwordVisible ? false : true,
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock_rounded),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off_rounded),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password must be atleast 6 character.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () async {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(const Duration(seconds: 1));
                            await Navigator.pushNamed(
                                // ignore: use_build_context_synchronously
                                context,
                                MyRoutes.homeRoute);
                            setState(() {
                              changeButton = false;
                            });
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 40 : 140,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                            color: changeButton
                                ? Colors.white
                                : const Color.fromARGB(255, 119, 106, 255),
                          ),
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  //color: Colors.white,
                                )
                              : const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Dont't have an account?",
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: " Sign up",
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 0, 51, 255)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.signupRoute);
                                  },
                              )
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
