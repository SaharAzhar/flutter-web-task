import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpract/utils/colors.dart';
import 'package:webpract/utils/constants.dart';

import '../utils/style.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
       mobile: (BuildContext context) =>MobileNavBar(),
       desktop: (BuildContext context) => DesktopNavBar(),
    );
  }
  Widget MobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navlogo(),
          ],
      ),
    );
  }
  Widget DesktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical:10 ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navlogo(),
          Row(
            children: [
              navButton('Feature'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: (){}, child: Text('request a demo',style: TextStyle(color: AppColors.primary),)),
          )
        ],
      ),
    );
  }
  Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: (){}, child: Text(text,
      style: const TextStyle(
        fontSize: 18,color: Colors.black
      ),
      ) ,
      ),
    );  
  }
  Widget navlogo (){
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo))
      ),
    );
  }
}