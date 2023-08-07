import 'package:flundr/common/constants/color_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String title = "";
  CustomAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        alignment: Alignment.center,
        width: AppBar().preferredSize.width,
        height: AppBar().preferredSize.height,

        color: primaryColor,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {
                 Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 25,
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}