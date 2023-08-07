import 'package:flundr/common/constants/color_style.dart';
import 'package:flundr/common/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'forgot_password_email.dart';
import 'forgot_password_phone.dart';
import 'login_with_email.dart';
import 'login_with_phone.dart';

class ForgotButtons extends StatefulWidget {

  const ForgotButtons({super.key});

  @override
  _ForgotButtonsState createState() => _ForgotButtonsState();
}

class _ForgotButtonsState extends State<ForgotButtons> {
  late bool formVisible;
  int? _formsIndex1;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex1 = 1;
  }

  late bool formVisible1;

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: Scaffold(
        appBar: AppBar(
          elevation: 10,
          leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios_new,color: textColor,)),
          title: Text('Forgot password',style: TextStyle(color: textColor,fontSize: 16),),
          backgroundColor: primaryColor,
        ),
          backgroundColor: primaryColor,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 40),
                  child: const Text("Find your account ",style: TextStyle(color: textColor),),
                ),

                Container(
                  color: primaryColor,
                  alignment: Alignment.topCenter,
                  child: Column(

                    children: <Widget>[


                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            const SizedBox(width: 15.0),
                            Expanded(

                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: _formsIndex1 == 1
                                        ? primaryColor
                                        : primaryColor,
                                    backgroundColor: _formsIndex1 == 1
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
                                    _formsIndex1 = 1;
                                  });
                                },
                              ),
                            ),

                            const SizedBox(width: 10.0),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: _formsIndex1 == 2
                                        ? primaryColor
                                        : primaryColor,
                                    backgroundColor: _formsIndex1 == 2
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
                                    _formsIndex1 = 2;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 15.0),

                          ],
                        ),
                      ),
                      _formsIndex1 == 1 ? const Forgot_Password_Email() : Forgot_password_Phone(),
                      // _formsIndex1 ==2 ? const Forgot_Password_Email(): const Forgot_password_Phone()
                    ],
                  ),
                ),
              ],


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
                              foregroundColor: _formsIndex1 == 1
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex1 == 1
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
                              _formsIndex1 = 1;
                            });
                          },
                        ),
                      ),

                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: _formsIndex1 == 2
                                  ? primaryColor
                                  : primaryColor,
                              backgroundColor: _formsIndex1 == 2
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
                              _formsIndex1 = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 15.0),

                    ],
                  ),
                ),
                _formsIndex1 == 1 ?  const Forgot_Password_Email() : const Forgot_password_Phone(),
                // _formsIndex1 ==2 ? const Forgot_Password_Email(): const Forgot_password_Phone()
              ],
            ),
          )),
    );
  }
}





