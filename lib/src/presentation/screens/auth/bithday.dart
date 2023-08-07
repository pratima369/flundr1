import 'package:flutter/material.dart';

import '../../../../common/constants/color_style.dart';
import '../../../../utils/Utils.birthDateValidator.dart';
import '../create_account.dart';

class Birthday extends StatefulWidget {
  const Birthday({super.key});

  @override
  State<Birthday> createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 10,
        leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new,color: textColor,)),
        title: Text('Your birthday',style: TextStyle(color: textColor,fontSize: 16),),

        backgroundColor: primaryColor,
      ),

      body: Container(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50,left: 20),
              child: Text('Your birthday',style: TextStyle(color: textColor,fontSize: 16),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Only your age will be visible to others',style: TextStyle(color: textfieldColor,fontSize: 16),),
            ),

           Padding(
             padding: const EdgeInsets.symmetric(
                 horizontal: 20),
             child: DateInputTextField()
           ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Row(
                children: [
                  Icon(Icons.info_outline,color: textColor,),
                  Text(' You must be 18 or older to use flundr',style: TextStyle(color: textfieldColor,fontSize: 16),),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAccount()));
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
