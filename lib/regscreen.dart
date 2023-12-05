import 'dart:developer';
import 'dart:ui';

import 'package:e_eye/loginscreen.dart';
import 'package:e_eye/tost.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authentication.dart';

class Register_page extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isPasswordField;
  const Register_page({super.key,
    this.controller,
    this.isPasswordField
  });

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
  final valid = GlobalKey<FormState>();
  final FirebaseAuthService _auth = FirebaseAuthService();
  bool _obscureText = true;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isSigningUp = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                isAntiAlias: true,
                image: AssetImage(
                    "pict/flim1.gif"
                ),fit: BoxFit.fill
            )
        ),
        child: Card(
          elevation: 10,
          color: Colors.grey.withOpacity(.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaY: 6,
                    sigmaX: 6
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: MediaQuery.of(context).size.width/1.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(.3)
                  ),
                  child: Form(
                    key: valid,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Register",style: GoogleFonts.daiBannaSil(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyanAccent),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _usernameController,
                            validator: (val){
                              if(val==null||val.isEmpty){
                                return "Please enter Username";
                              }
                              return null;
                            },
                            obscureText: widget.isPasswordField == true? _obscureText : false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person,color: Colors.cyanAccent,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              labelText: "Username",
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child:
                                widget.isPasswordField==true?
                                Icon(_obscureText ?
                                Icons.visibility_off : Icons.visibility,
                                  color: _obscureText == false ?
                                  Colors.blue : Colors.grey,) : Text(""),
                              ),
                            ),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: _emailController,
                            validator: (value){
                              {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              }
                            },
                            obscureText: widget.isPasswordField == true? _obscureText : false,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail,color: Colors.cyan,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child:
                                widget.isPasswordField==true?
                                Icon(_obscureText ?
                                Icons.visibility_off : Icons.visibility,
                                  color: _obscureText == false ?
                                  Colors.blue : Colors.grey,) : Text(""),
                              ),
                              labelText: "E-Mail",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller:_passwordController,
                            validator:(value){
                              {
                                if(value == null||value.isEmpty)
                                {
                                  return 'Please enter password';
                                }
                                else if (value.length < 6){
                                  return 'Password is less then 6 character';
                                }
                                else if (value.length > 6){
                                  return 'Password is more then 6 character';

                                }
                                return null;
                              }
                            },
                            obscureText: widget.isPasswordField == true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password,color: Colors.cyan,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child:
                                widget.isPasswordField==true?
                                Icon(_obscureText ?
                                Icons.visibility_off : Icons.visibility,
                                  color: _obscureText == false ?
                                  Colors.blue : Colors.grey,) : Text(""),
                              ),
                              labelText: "Enter new password",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller:_passwordController,
                            validator:(value){
                              {
                                if(value == null||value.isEmpty)
                                {
                                  return 'Please enter password';
                                }
                                else if (value.length < 6){
                                  return 'Password is less then 6 character';
                                }
                                else if (value.length > 6){
                                  return 'Password is more then 6 character';
                                }
                                return null ;
                              }
                            },
                            obscureText: widget.isPasswordField == true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password,color: Colors.cyan,),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child:
                                widget.isPasswordField==true?
                                Icon(_obscureText ?
                                Icons.visibility_off : Icons.visibility,
                                  color: _obscureText == false ?
                                  Colors.blue : Colors.grey,) : Text(""),
                              ),

                              labelText: "Enter conform password",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*.04,
                          width: MediaQuery.of(context).size.width*.5,
                          child:  GestureDetector(
                            onTap:  (){
                              _signUp();

                            },
                            child: Container(
                              width: double.infinity,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: isSigningUp ? CircularProgressIndicator(color: Colors.white,):Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                        ),
                        GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>Login()));
                        },
                          child: RichText(text:
                          TextSpan(
                              children: [
                                TextSpan(text: "Already in this Community ?",style: TextStyle(
                                    color: Colors.cyan
                                )),
                                TextSpan(text: "  Sign In",style: TextStyle(
                                    color: Colors.black
                                )),

                              ])),
                        )
                      ],
                    ),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _signUp() async {

    setState(() {
      isSigningUp = true;
    });
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    User? user = await _auth.signUpWithEmailAndPassword(email, password);
    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      showToast(message: "User is successfully created");
      Navigator.push(context, MaterialPageRoute(builder: (_)=> Login()));
    } else {
      showToast(message: "Some error happened");
    }
  }
}
