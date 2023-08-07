import 'package:flundr/common/constants/color_style.dart';
import 'package:flundr/src/presentation/screens/auth/tab_buttons.dart';
import 'package:flutter/material.dart';

import 'bithday.dart';
import 'forgot_password_phone.dart';

class Forgot_Password_Email extends StatefulWidget {
  const Forgot_Password_Email({super.key});

  @override
  State<Forgot_Password_Email> createState() => _Forgot_Password_EmailState();
}

class _Forgot_Password_EmailState extends State<Forgot_Password_Email> {
  final textFieldFocusNode = FocusNode();


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
          const SizedBox(height: 40.0),
          Text("Enter your flundr email linked to your account. ",style: TextStyle(color: textfieldColor),),
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
              child: const Text("Next"),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Birthday()));
            },
          ),


        ],
      ),
    );
  }
}


