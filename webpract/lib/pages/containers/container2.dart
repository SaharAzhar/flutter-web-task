import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpract/utils/colors.dart';

import '../../utils/constants.dart';
class container2 extends StatefulWidget {
  container2({Key? key}) : super(key: key);

  @override
  State<container2> createState() => _container2State();
}

class _container2State extends State<container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile:(BuildContext context) => MobileContainer1(),
      desktop: (BuildContext context) => DesktopContainer2(),
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

  Widget DesktopContainer2(){
    return Container(
     height: 900,
     width: double.infinity,
     decoration: BoxDecoration(
      color: AppColors.primary,
     ),
     child: Column(
      children: [
        Expanded(
          child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(vector),fit: BoxFit.contain)
                ),
              )),
              Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(vector1),fit: BoxFit.contain)
                ),
              )),

            Positioned(left: 43,right: 43, bottom: 0,
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(dashboard))
              ),
            ),
            )
          ],
        )),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung),
            ],
          ),
        )
      ],
     ),
    );
  }
  Widget companyLogo( String images){
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images),fit: BoxFit.contain)
      ),
    );
  }
}