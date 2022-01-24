import 'package:flutter/material.dart';
import 'package:se_app2/constants.dart';
import 'package:se_app2/screen/home/home.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController realnameController = TextEditingController();
    TextEditingController surnameController = TextEditingController();

    Future save() async {
      var res = await http.post("http://10.0.2.2:8080/signup",
          headers: <String, String>{
            'Context-Type': 'application/json;charSet=UTF-8'
          },
          body: <String, String>{
            "email": emailController.text,
            "phone": phoneController.text,
            "realname": realnameController.text,
            "surname": surnameController.text,
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
              SizedBox(height: size.height * 0.02,),
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
              SizedBox(height: size.height * 0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: new TextFormField(
                        decoration: InputDecoration(
                          labelText: 'ชื่อ',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      controller: realnameController,
                    ),
                  ),
                  SizedBox(width: size.width * 0.02,),
                  new Flexible(
                    child: new TextField(
                        decoration: InputDecoration(
                          labelText: 'นามสกุล',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      controller: surnameController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01,),
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
              SizedBox(height: size.height * 0.02,),
              GestureDetector(
                onTap: () {
                save();
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 50.0,
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
                        text: 'เข้าสู่ระบบ ',
                        style:  TextStyle(color: Colors.black),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/login',);
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

