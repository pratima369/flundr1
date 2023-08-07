import 'package:flundr/common/constants/color_style.dart';
import 'package:flundr/common/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'forgot_password_email.dart';
import 'forgot_password_phone.dart';
import 'login_with_email.dart';
import 'login_with_phone.dart';

class LoginButtons extends StatefulWidget {

  const LoginButtons({super.key});

  @override
  _LoginButtonsState createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  late bool formVisible;
  int? _formsIndex;
  int? _formsIndex1;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
    _formsIndex1 = 1;
  }

  late bool formVisible1;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
    mobileBody: Scaffold(
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            color: primaryColor,
            alignment: Alignment.topCenter,
            child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const SizedBox(width: 15.0),
                      Expanded(

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: _formsIndex == 1
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex == 1
                                  ? secondaryColor
                                  : primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              side: const BorderSide(
                                  width: 1, // the thickness
                                  color: textfieldColor // the color of the border
                              )
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Email",style:TextStyle(color: textColor),),
                          ),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 1;
                            });
                          },
                        ),
                      ),

                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: _formsIndex == 2
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex == 2
                                  ? secondaryColor
                                  : primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              side: const BorderSide(
                                  width: 1, // the thickness
                                  color: textfieldColor // the color of the border
                              )
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Phone",style:TextStyle(color: textColor),),
                          ),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 15.0),

                    ],
                  ),
                ),
                _formsIndex == 1 ?  LoginEmail() : const LoginPhone(),
                // _formsIndex1 ==2 ? const Forgot_Password_Email(): const Forgot_password_Phone()
              ],
            ),
          ),
        )),
      desktopBody: Scaffold(
          backgroundColor: primaryColor,
          body: Container(
            color: primaryColor,
            alignment: Alignment.topCenter,
            child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const SizedBox(width: 15.0),
                      Expanded(

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: _formsIndex == 1
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex == 1
                                  ? secondaryColor
                                  : primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              side: const BorderSide(
                                  width: 1, // the thickness
                                  color: textfieldColor // the color of the border
                              )
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Email",style:TextStyle(color: textColor),),
                          ),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 1;
                            });
                          },
                        ),
                      ),

                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: _formsIndex == 2
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex == 2
                                  ? secondaryColor
                                  : primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.0)),
                              side: const BorderSide(
                                  width: 1, // the thickness
                                  color: textfieldColor // the color of the border
                              )
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Phone",style:TextStyle(color: textColor),),
                          ),
                          onPressed: () {
                            setState(() {
                              _formsIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 15.0),

                    ],
                  ),
                ),
                _formsIndex == 1 ?  LoginEmail() : const LoginPhone()
              ],
            ),
          )),
    );
  }
}





