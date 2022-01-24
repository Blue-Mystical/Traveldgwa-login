import 'package:flutter/material.dart';
import 'package:se_app2/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

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

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future save() async {
      var res = await http.post("http://10.0.2.2:8080/signin",
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            "email": emailController.text,
            "password": passwordController.text,
          });
      print(res.statusCode);
      if (res.statusCode == 200) {
        print('success');
        Navigator.pushNamed(
          context, '/home',
        );
      }
      else {
        print('failure');
      }
    }

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
              SizedBox(height: size.height * 0.02,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'อีเมลหรือหมายเลขโทรศัพท์',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
                controller: emailController,
              ),
              SizedBox(height: size.height * 0.01,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'รหัสผ่าน',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: size.height * 0.006,),
              Container(
                child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/password',);
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
              SizedBox(height: size.height * 0.07,),
               GestureDetector(
              onTap: () {
                save();
              },
                 child: Container(
                   padding: EdgeInsets.only(
                     left: 10,
                     right: 10,
                   ),
                   height: 50.0,
                   child: Material(
                     borderRadius: BorderRadius.circular(30.0),
                     color: primaryColor,

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
                 ),
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
                            Navigator.pushNamed(context, '/register',);
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

