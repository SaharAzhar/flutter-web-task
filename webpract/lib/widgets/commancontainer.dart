import 'package:flutter/material.dart';

import '../utils/constants.dart';
Widget commancontainer(s1,s2,s3,image,bool imageleft){
  return Container(
    color: Colors.white,
    padding: EdgeInsetsDirectional.symmetric(horizontal: w!/10,vertical: 30),
    child:Row(
      children: [
        imageleft?Expanded(child: Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
          ),
        )):Container(),
        Expanded(child: Column(
          crossAxisAlignment:imageleft? CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
            Text(s1,
            textAlign: imageleft?TextAlign.right:TextAlign.left,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
            ),
            ),SizedBox(height:10,),
            Text(s2,
            textAlign: imageleft?TextAlign.right:TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              height: 1.1,
              fontSize: w!/20,
              fontWeight: FontWeight.bold
            ),
            ),SizedBox(height:10,),
            Text(s3,
            textAlign: imageleft?TextAlign.right:TextAlign.left,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 16,
            ),
            ),

          ],

        )),
        !imageleft?Expanded(child: Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
          ),
        )):Container(),
    ],
    ),
  );
}