import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpract/utils/colors.dart';

import '../../utils/constants.dart';
class container1 extends StatefulWidget {
  container1({Key? key}) : super(key: key);

  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile:(BuildContext context) => MobileContainer1(),
      desktop: (BuildContext context) => DesktopContainer1(),
    );
  }
  Widget MobileContainer1(){
   return Container(
      //margin: EdgeInsets.symmetric(horizontal: w!/10,vertical: 20),
      child:Column(
        children: [
           Container(

            height: w!/1.2, width: w!/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(illustration1),fit: BoxFit.contain)
            ),
          ), SizedBox(height: 20,),
          
                Text('Track your \nExpenses to \nSave Money',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: w!/20,
                  fontWeight: FontWeight.bold,
                  height:1.2),
                  ),
                  SizedBox(height: 20,),
                  Text('Help you to organize \nyour income and expenses',
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 45,
                    child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(AppColors.primary)
                    ),  
                    onPressed: (){}, 
                    icon:Icon(Icons.arrow_drop_down_sharp), label: Text('try free demo')),
                  ),
                  SizedBox(width: 20, height: 20,),
                  Text('-Web, IOS, Android',style:TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16
                  ),)
              ],      
      )
    );
  }

  Widget DesktopContainer1(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/10,vertical: 20),
      child:Row(
        children: [
          Expanded(child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Track your \nExpenses to \nSave Money',
                style: TextStyle(
                  fontSize: w!/20,
                  fontWeight: FontWeight.bold,
                  height:1.2),
                  ),
                  SizedBox(height: 20,),
                  Text('Help you to organize your income and expenses',
                  style:TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.primary)
                        ),  
                        onPressed: (){}, 
                        icon:Icon(Icons.arrow_drop_down_sharp), label: Text('try free demo')),
                      ),
                      SizedBox(width: 20,),
                      Text('-Web, IOS, Android',style:TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16
                  ),),
                    ],
                  )
              ],
            ),
          )),
          Expanded(child: Container(

            height: 530,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(illustration1),fit: BoxFit.contain)
            ),
          ))
        ],
      )
    );
  }
}