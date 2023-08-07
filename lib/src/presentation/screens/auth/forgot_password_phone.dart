import 'package:flutter/material.dart';

import '../../../../common/constants/color_style.dart';
import '../../../../common/responsive/responsive_layout.dart';
import 'bithday.dart';

class Forgot_password_Phone extends StatefulWidget {
  const Forgot_password_Phone({super.key});

  @override
  State<Forgot_password_Phone> createState() => _Forgot_password_PhoneState();
}

class _Forgot_password_PhoneState extends State<Forgot_password_Phone> {

  final textFieldFocusNode2 = FocusNode();

  bool _obscured2 = true;

  void _toggleObscured() {
    setState(() {
      _obscured2 = !_obscured2;
      if (textFieldFocusNode2.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode2.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color:primaryColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(6.0),
          children: <Widget>[
            const SizedBox(height: 40.0),
            Text("Enter your flundr phone linked to your account. ",style: TextStyle(color: textfieldColor),),
            const SizedBox(height: 20.0),
            TextField(
              style: TextStyle(color: textfieldColor2),
              // focusNode: textFieldFocusNode,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                labelText: "IN +91 Phone",
                hintStyle: TextStyle(color: textfieldColor),
                filled: true, // Needed for adding a fill color
                fillColor: primaryColor,
                isDense: true,  // Reduces height a bit
                border: OutlineInputBorder(
                  // No border
                  borderRadius: BorderRadius.circular(12),  // Apply corner radius
                ),
                prefixIcon: Icon(Icons.phone_android_outlined, size: 24),

              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Next"),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Birthday()));
              },
            ),
          ],
        ),
      ),
      desktopBody:  Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color:primaryColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(6.0),
          children: <Widget>[
            const SizedBox(height: 20.0),
            TextField(
              style: TextStyle(color: textfieldColor2),
              // focusNode: textFieldFocusNode,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
                labelText: "Phone",
                hintStyle: TextStyle(color: textfieldColor),
                filled: true, // Needed for adding a fill color
                fillColor: primaryColor,
                isDense: true,  // Reduces height a bit
                border: OutlineInputBorder(
                  // No border
                  borderRadius: BorderRadius.circular(12),  // Apply corner radius
                ),
                prefixIcon: Icon(Icons.phone_android_outlined, size: 24),

              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(color: textfieldColor),),
                Text('Sign in',style: TextStyle(color: textColor3),)
              ],
            ),
            const SizedBox(height: 30.0),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text("Login"),
              ),
              onPressed: () {},
            ),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    // side: const BorderSide(color:textfieldColor2),
                    backgroundColor: Colors.black12,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  icon:CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12,
                    child: Image.asset(
                      'assets/images/fb.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,

                    ),
                  ),
                  label: const Text("Facebook"),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20.0),



            const SizedBox(height: 40.0),
            Expanded(
              child: Text("Flundr will NEVER Post anything to your social channels.",
                style: TextStyle(color: textfieldColor,fontSize: 13),),
            ),
          ],
        ),
      ),
    );
  }
}