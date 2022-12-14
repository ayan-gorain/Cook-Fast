import 'package:cook_fast/pages/otpverifypage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../utils/routes.dart';

class verify extends StatefulWidget {
  const verify({Key? key}) : super(key: key);

  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {


  final  FirebaseAuth auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code='';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image(image: AssetImage('assets/images/ddd.jpg')),
            Text(
              "Phone Verification",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PTSerif'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We need to enter the code sent to your mobile number!!!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
            child: Pinput(
              onChanged: (value){
                code=value;

              },
              submittedPinTheme: submittedPinTheme,
              length: 6,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: 210,
              height: 50,
              onPressed: () async{
                try{
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: otp.verify, smsCode: code);

                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                  Navigator.pushNamed(context, MyRoutes.onboaRoute );

                }
                catch(e){
                  print("wrong otp");
                }
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Text("Verify the Code",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  )),
            ),
            TextButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, 'otp', (route) => false);
            }, child: Text(
              'Edit Phone number?',style: TextStyle(color: Colors.black),
            ))
          ],
        ),
      ),
    );
  }
}
