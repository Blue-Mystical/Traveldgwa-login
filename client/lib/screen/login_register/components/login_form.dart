import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';
import 'package:flutter/gestures.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      color: secondaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[],
      )
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: paddingValue,
            right: paddingValue,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text("ลงชื่อเข้าใช้งาน",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'อีเมลหรือหมายเลขโทรศัพท์',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    // hintText: 'EMAIL',
                    // hintStyle: ,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
              ),
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    // prefixIcon: Align(
                    //   widthFactor: 1.0,
                    //   heightFactor: 1.0,
                    //   child: Icon(
                    //     Icons.person,
                    //   ),
                    // ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
                obscureText: true,
              ),
              SizedBox(height: 5.0),
              Container(
                child: GestureDetector(
                onTap: () {
                  print('change page to request password');
                },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("ลืมรหัสผ่าน ?",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70.0),
              Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: primaryColor,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'เข้าสู่ระบบ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(height: 20.0),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text("หรือเข้าใช้งานด้วย",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print('google');
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/icons/google-icon.png',
                            width: 30.0, height: 30.0),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        print('facebook');
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/icons/facebook-icon.png',
                            width: 30.0, height: 30.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: grayColor, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(text: 'หรือ '),
                    TextSpan(
                        text: 'ลงทะเบียน ',
                        style:  TextStyle(color: Colors.black),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('ลงทะเบียน');
                          }),
                    TextSpan(text: 'เข้าใช้งานด้วยอีเมลและหมายเลขโทรศัพท์'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],


    );
  }
}

