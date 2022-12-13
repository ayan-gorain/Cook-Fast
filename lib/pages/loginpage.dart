import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 400),
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
                    padding: const EdgeInsets.only(left: 150,top: 10),
                    child: Text("Login",style: TextStyle(
                        fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
                    ),),
                  ),
                  SizedBox(height: 40,),


                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
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


                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextFormField(
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
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: MaterialButton(
                      minWidth:250,
                      height: 60,
                      onPressed: () {
                       // Navigator.pushNamed(context, MyRoutes.otpRoute );
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),

                ]),
              ),
            ),
            Image(image: AssetImage('assets/images/login.png'))
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
