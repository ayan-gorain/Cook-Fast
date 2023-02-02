import 'package:carousel_slider/carousel_slider.dart';
import 'package:cook_fast/utils/routes.dart';
import 'package:flutter/material.dart';



class welco extends StatefulWidget {
  const welco({Key? key}) : super(key: key);

  @override
  State<welco> createState() => _welcoState();
}

class _welcoState extends State<welco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            CarouselSlider(items: [
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/e5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/e2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/e3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/e1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/e4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),],
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),),
            SizedBox(height: 30,),
            Text("Cook Fast",style: TextStyle(
              fontSize: 90,fontWeight: FontWeight.w700,fontFamily: 'Dancing',
            ),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  minWidth:160,
                  height: 70,
                  onPressed: () {
                    // Navigator.pushNamed(context, MyRoutes.FilterRoute);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("Recipy Finder",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
                MaterialButton(
                  minWidth:160,
                  height: 70,
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.FilterRoute);
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text("What's in your fridge?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
            SizedBox(height: 30,),
            MaterialButton(
              minWidth:160,
              height: 70,
              onPressed: () {
                // Navigator.pushNamed(context, Myroutes.shopnameRoute);
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Text("Bmi calculator",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  )),
            ),

          ],
        ),
      ),
    );;
  }
}
