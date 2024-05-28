import 'package:flutter/material.dart';
import 'package:my_first_app/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _buttonAnimation = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset("assets/images/signup.png"),
                  const Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 30.0,
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
                            prefixIcon: Icon(Icons.account_circle_rounded),
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Username";
                            } else {
                              return null;
                            }
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Email",
                              labelText: "Email",
                              prefixIcon: Icon(Icons.email_rounded)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Email";
                            } else {
                              return null;
                            }
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter Phone number",
                              labelText: "Phone number",
                              prefixIcon: Icon(Icons.phone_android_rounded)),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Phone number";
                            } else {
                              return null;
                            }
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock_rounded),
                              suffixIcon: Icon(Icons.visibility_off_rounded)),
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
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                _buttonAnimation = true;
                              });
                              await Future.delayed(const Duration(seconds: 1));
                              await Navigator.pushNamed(
                                  context, MyRoutes.homeRoute);
                              setState(() {
                                _buttonAnimation = false;
                              });
                            }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 40,
                            width: _buttonAnimation ? 40 : 140,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: _buttonAnimation
                                    ? Colors.white
                                    : const Color.fromARGB(255, 106, 94, 231),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: _buttonAnimation
                                ? const Icon(Icons.done)
                                : const Text(
                                    "CREATE",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "Already have an account?",
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: " Login",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 16, 101, 248)))
                              ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
