import 'package:cook_fast/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgetpass extends StatelessWidget {
  const forgetpass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],

        title: Text ('Forget Password',
          style: TextStyle(
            fontFamily: 'Poppins'
          ),
        ),
      ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset('assets/images/forPass.png'),
                  width: 300,
                ),
                Text('Please Enter Your Email Address To\n     Recevic a Verification Code',
                style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 20,
                    fontFamily: 'Poppins Pro'
                ),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "email cannot be empty";
                      }
                      return null;

                    },
                    //onChanged: (value){
                   //   _email=value.trim();
                   // },
                    decoration: InputDecoration(
                      prefixIcon : Icon(Icons.mail_outline),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),),
                      labelText: 'Email',
                      hintText: 'Enter Email here',
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  minWidth:250,
                  height: 60,
                  onPressed: ()  {  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("get otp",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),


              ],
            ),
          ),
        ));
  }
}
