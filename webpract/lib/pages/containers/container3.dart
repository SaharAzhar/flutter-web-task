import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpract/utils/colors.dart';
import 'package:webpract/widgets/commancontainer.dart';

import '../../utils/constants.dart';
class container3 extends StatefulWidget {
  container3({Key? key}) : super(key: key);

  @override
  State<container3> createState() => _container3State();
}

class _container3State extends State<container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile:(BuildContext context) => MobileContainer1(),
      desktop: (BuildContext context) => DesktopContainer3(),
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

  Widget DesktopContainer3(){
    return commancontainer('Always online',
     'real-time\nsupport\nwith cloud', 
     'contact us to make your life easy by contacting us',
      illustration3, 
      false);
  }
}