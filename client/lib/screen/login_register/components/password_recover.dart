import 'package:flutter/material.dart';
import 'package:se_app2/constants.dart';
import 'package:flutter/gestures.dart';

class PasswordRecoveryForm extends StatelessWidget {
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
                child: Stack(
                  children: [
                    Container(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                        child: Icon(
                          Icons.arrow_back,
                          color: primaryColor,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ),
                      alignment: Alignment.topLeft,

                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("ลืมรหัสผ่าน",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),

              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'กรุณากรอกอีเมลหรือหมายเลขโทรศัพท์',
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
              SizedBox(height: 60.0),
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
                          'ดำเนินการต่อ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ],


    );
  }
}

