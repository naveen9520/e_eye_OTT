import 'dart:ui';

import 'package:e_eye/regscreen.dart';
import 'package:e_eye/tost.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'authentication.dart';
import 'botnavi.dart';
import 'homepage.dart';


class Login extends StatefulWidget {
  final TextEditingController? controller;
  final bool? isPasswordField;

  const Login({
    super.key,
    this.controller,
    this.isPasswordField

  });

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  bool _obscureText = true;
  final valid = GlobalKey<FormState>();
  bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
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
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 6,
              sigmaY: 6
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(" WELCOME ",style: GoogleFonts.daiBannaSil(
                  fontSize: 35,
                  color: Colors.black
              )
              ),
              Container(
                height: MediaQuery.of(context).size.height/2.3,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.grey.withOpacity(.6)
                ),
                child: Form(
                  key: valid,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Login",style: GoogleFonts.daiBannaSil(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color:Colors.cyanAccent),),
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
                            prefixIcon: Icon(Icons.mail,color: Colors.cyanAccent,),
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
                            prefixIcon: Icon(Icons.password,color: Colors.cyanAccent,),
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
                            labelText: "Enter the password",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*.04,
                        width: MediaQuery.of(context).size.width*.45,
                        child: GestureDetector(
                          onTap: () {
                            _signIn();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: _isSigning ? CircularProgressIndicator(
                                color: Colors.white,) :
                              Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>const Register_page()));
                        },
                        child: RichText(text:
                        TextSpan(
                            children: [
                              TextSpan(text: "New to Community ?",style: TextStyle(
                                  color: Colors.black
                              )
                              ),
                              TextSpan(text: "  Sign up",style: TextStyle(
                                  color: Colors.cyanAccent
                              )
                              ),
                            ]
                        )
                        ),
                      )
                    ],
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }


  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "User is successfully signed in");
      Navigator.push(context, MaterialPageRoute(builder: (_)=> Navi()));
    } else {
      showToast(message: "some error occured");
      Navigator.push(context, MaterialPageRoute(builder: (_)=> Register_page()));

    }
  }
}
