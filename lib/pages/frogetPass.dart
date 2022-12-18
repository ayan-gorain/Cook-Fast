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
        title: Text(
          'Forget Password',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/images/forPass.png'),
                width: 300,
              ),

              SizedBox(height: 50),

              Text(
                'Please Enter Your Email Address To\n     Recevic a Verification Code',
                style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 20,
                    fontFamily: 'Poppins Pro'),
              ),

              SizedBox(height: 35),

              Column(
                children: [
                  Text(
                    'Email Address -',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 27),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.red[400],
                        ),
                        labelText: 'example@gmail.com',
                        labelStyle: TextStyle(
                          fontSize: 19,
                          color: Colors.blueGrey[400],
                          fontFamily: 'Source Sans Pro',
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.blueGrey[100],
                        filled: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),

              // Container(
              //     color: Colors.blueGrey[100],
              //     padding: EdgeInsets.all(0.2),
              //     margin: EdgeInsets.symmetric(vertical: 10, horizontal: 27),
              //     child: ListTile(
              //       leading: Icon(
              //         Icons.mail,
              //         color: Colors.red[400],
              //       ),
              //       title: Text('example@gmail.com',
              //           style: TextStyle(
              //             fontSize: 19,
              //             color: Colors.blueGrey[400],
              //             fontFamily: 'Source Sans Pro',
              //           )
              //       ),
              //     )
              // )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     // Add your onPressed code here!
      //   },
      //   label: const Text('submit'),
      //   backgroundColor: Colors.red[400],
      // ),
    );
  }
}
