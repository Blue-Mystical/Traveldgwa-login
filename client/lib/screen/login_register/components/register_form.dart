import 'package:flutter/material.dart';
import 'package:home_and_login/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    Future save() async {
      var res = await http.post("http://10.0.2.2:8080/signup",
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            "email": emailController.text,
            "phone": phoneController.text,
            "password": passwordController.text,
          });
      print(res.body);
    }

    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            left: paddingValue,
            right: paddingValue,
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: const Center(
                  child: Text("ลงทะเบียนเข้าใช้งาน",
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
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'อีเมล',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
                  controller: emailController,
              ),

              const SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'หมายเลขโทรศัพท์',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                    // hintText: 'EMAIL',
                    // hintStyle: ,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor))),
                controller: phoneController,
              ),
              const SizedBox(height: 10.0),
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
              SizedBox(height: 5.0),
              Container(
                child: GestureDetector(
                onTap: () {
                  print('change page to request password');
                },
                  child: const Align(
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
              SizedBox(height: 30.0),
              Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 50.0,
                    child: GestureDetector(
                      onTap: () {
                        print('tap');
                        save();
                      },
                        child: Material(
                          borderRadius: BorderRadius.circular(30.0),
                          color: primaryColor,

                          child: const Center(
                            child: Text(
                              'สมัครสมาชิก',
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
              RichText(
                text: TextSpan(
                  style: TextStyle(color: grayColor, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(text: 'มีบัญชี TravelDKwa อยู่แล้ว ? '),
                    TextSpan(
                        text: 'ลงทะเบียน ',
                        style:  TextStyle(color: Colors.black),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('ลงชื่อเข้าใช้งาน');
                          }),
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

