import 'package:flundr/src/presentation/screens/auth/tab_buttons.dart';
import 'package:flundr/src/presentation/screens/auth/tab_forgot_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../common/constants/color_style.dart';
import 'forgot_password_email.dart';



class LoginEmail extends StatefulWidget {
  LoginEmail({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  final textFieldFocusNode = FocusNode();

  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              labelText: "Email",
              hintStyle: TextStyle(color: textfieldColor),
              filled: true, // Needed for adding a fill color
              fillColor: primaryColor,
              isDense: true,  // Reduces height a bit
              border: OutlineInputBorder(
                // No border
                borderRadius: BorderRadius.circular(12),  // Apply corner radius
              ),
              prefixIcon: Icon(Icons.email, size: 24),

            ),
          ),

          const SizedBox(height: 40.0),
          TextField(
            style: TextStyle(color: textfieldColor2),
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscured,
            // focusNode: textFieldFocusNode,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
              labelText: "Password",
              hintStyle: TextStyle(color: textfieldColor),
              filled: true, // Needed for adding a fill color
              fillColor: primaryColor,
              isDense: true,  // Reduces height a bit
              border: OutlineInputBorder(
                // No border
                borderRadius: BorderRadius.circular(12),  // Apply corner radius
              ),
              prefixIcon: Icon(Icons.lock_rounded, size: 24),
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(
                    _obscured
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
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
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotButtons()));
                },
                child: Text("Forgot Password?",
                  style: TextStyle(color: textfieldColor,fontSize: 16),),
              ),
            ],
          ),
          const SizedBox(height: 50.0),

          Row(
            children: [
              Expanded(
                  child: Divider(
                    color: textfieldColor2,
                    thickness: 1,
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Or Using",
                  style: TextStyle( color: textfieldColor2,),
                ),
              ),
              Expanded(
                  child: Divider(
                    color: textfieldColor2,
                    thickness: 1,
                  )),
            ],
          ),
          const SizedBox(height: 20.0),
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
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  // side: const BorderSide(color:textfieldColor2),
                  backgroundColor: Colors.black12,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                icon:  SvgPicture.asset(
                  'assets/images/google-icon.svg',
                  width: 30,
                  height: 30,

                ),
                label: const Text("Google"),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                // side: const BorderSide(color:textfieldColor2),
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              icon: const Icon(FontAwesomeIcons.apple),
              label: const Text("Sign in with apple"),
              onPressed: () {},
            ),
          ),

          const SizedBox(height: 40.0),
          Expanded(
            child: Text("Flundr will NEVER Post anything to your social channels.",
              style: TextStyle(color: textfieldColor,fontSize: 13),),
          ),
        ],
      ),
    );
  }
}