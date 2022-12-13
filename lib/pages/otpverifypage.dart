import 'package:cook_fast/utils/routes.dart';
import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  TextEditingController countrycode=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Column(
            children: [
              SizedBox(height: 50,),
              Image(image: AssetImage('assets/images/fff.jpg')),
              Text("Phone Verification",style:TextStyle(
                  fontSize: 30,fontWeight: FontWeight.w700,fontFamily: 'PTSerif'
              ),),
              SizedBox(height: 10,),
              Text("We need to register your phone before getting started!!!!!",style:TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,),
             SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left: 30,right: 30),
               child: Container(
                 height: 55,
                 decoration: BoxDecoration(
                   border: Border.all(width: 1,color: Colors.grey),
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child:  Row(
                   children: [
                     SizedBox(width: 20,),
                     SizedBox(
                       width: 40,
                       child: TextField(
                         controller: countrycode,
                         decoration: InputDecoration(border: InputBorder.none),
                       ),
                     ) ,
                     SizedBox(width: 10,),
                     Text("|",style: TextStyle(fontSize: 33,color: Colors.grey),),
                     SizedBox(width: 10,),
                     Expanded(
                       child: TextField(
                         decoration: InputDecoration(border: InputBorder.none,hintText: "Phone"),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              SizedBox(height: 30,),
              MaterialButton(
                minWidth:210,
                height: 50,
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.verifyRoute );
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Text("Send the Code",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
              ),


            ],
        ),
      ),

    );
  }
}
