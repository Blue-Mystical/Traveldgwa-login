import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:home_and_login/constants.dart';
import 'package:home_and_login/screen/home/components/home_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/homebg.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/logo.png',
                        width: 80.0, height: 80.0),
                  ),
                SizedBox(width: 1),
                Text("TravelDGwa",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(-2.0, 2.0),
                          color: primaryColor,
                        ),
                        Shadow(
                          offset: Offset(-4.0, 4.0),
                          blurRadius: 4.0,
                          color: Color.fromARGB(128, 0, 0, 0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeButton(icon: 'assets/icons/01.png', text: 'ค้นหาที่พัก', route: '/findhotel'),
                SizedBox(width: 40),
                HomeButton(icon: 'assets/icons/02.png', text: 'เที่ยวบิน', route: '/findhotel'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeButton(icon: 'assets/icons/03.png', text: 'บริการรับ-ส่ง', route: '/findhotel'),
                SizedBox(width: 30),
                HomeButton(icon: 'assets/icons/04.png', text: 'เช่ารถ', route: '/findhotel'),
                SizedBox(width: 30),
                HomeButton(icon: 'assets/icons/05.png', text: 'แผนที่', route: '/findhotel'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                HomeButton(icon: 'assets/icons/06.png', text: 'กิจกรรม', route: '/findhotel'),
                SizedBox(width: 30),
                HomeButton(icon: 'assets/icons/07.png', text: 'สถานที่ท่องเที่ยว', route: '/findhotel'),
                SizedBox(width: 30),
                HomeButton(icon: 'assets/icons/08.png', text: 'ร้านอาหาร', route: '/findhotel'),
              ],
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: paddingValue / 2,
                right: paddingValue / 2,
              ),

              child: Row(
                children: [
                  Image.asset('assets/icons/promotion.png',
                      width: 20.0, height: 20.0, fit:BoxFit.fill),
                  SizedBox(width: 10),
                  Text("Promotion",
                    style: TextStyle(
                      color: grayColor,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),

            CarouselSlider(
              options: CarouselOptions(
                height: 140.0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.amber
                        ),
                        child: Text('image no. $i', style: TextStyle(fontSize: 24.0),)
                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: paddingValue / 2,
                right: paddingValue / 2,
              ),

              child: Row(
                children: [
                  Image.asset('assets/icons/compass.png',
                      width: 20.0, height: 20.0, fit:BoxFit.fill),
                  SizedBox(width: 10),
                  Text("Recommended",
                    style: TextStyle(
                      color: grayColor,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            CarouselSlider(
              options: CarouselOptions(
                height: 90.0,
                viewportFraction: 0.35,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(8),),
                        ),
                        child: Text('image no. $i', style: TextStyle(fontSize: 24.0),)
                    );
                  },
                );
              }).toList(),
            ),

          ],
        ),
      ],


    );
  }
}

