import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/routes.dart';
import 'otpverifypage.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();

}

class _signupState extends State<signup> {

  final FirebaseFirestore db = FirebaseFirestore.instance;
  var email='';
  var password='';
  late String namee;
  bool _isHidden = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 320),
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: VStack([
                  Padding(
                    padding: const EdgeInsets.only(left: 90,top: 10),
                    child: Text("Sign up",style: TextStyle(
                        fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                    ),),
                  ),
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),),
                        labelText: 'Full Name',
                        hintText: 'Enter Name here',
                      ),
                      onChanged: (value){
                        namee=value;
                      },

                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
                      onChanged: (value){
                        email=value;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),),
                        labelText: 'Email',
                        hintText: 'Enter Email here',
                      ),
                    ),
                  ),
                   SizedBox(height: 20,),


                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextFormField(
                      onChanged: (value){
                        password=value;
                      },
                      obscureText: _isHidden,
                      decoration: InputDecoration(

                        prefixIcon : Icon(Icons.person),
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(color: Colors.blue),

                        ),
                        hintText: 'Enter Password here',
                        suffix: SizedBox(
                          width: 30,
                          child: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off, size: 18,
                            ),
                          ),
                        ),
                      ),

                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        return null;

                      },

                    ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: MaterialButton(
                      minWidth:250,
                      height: 60,
                      onPressed: ()async {
                        final data = <String, String>{
                          "name": namee,
                        };
                        try {
                          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        {

                          await db.collection("users")
                              .doc(FirebaseAuth.instance.currentUser!.uid)
                              .set(data)
                              .onError((e, _) => print("Error writing document: $e"))
                              .then((value) {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context) => otp()));
                          });
                        }


                        //Get.snackbar("log in","suce",
                        //snackPosition: SnackPosition.BOTTOM);
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),

                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,top: 30),
              child: Image(image: AssetImage('assets/images/signup.png')),
            )
          ],
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

}
