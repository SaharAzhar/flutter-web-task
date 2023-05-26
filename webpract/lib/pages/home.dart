import 'package:flutter/material.dart';
import 'package:webpract/pages/containers/container1.dart';
import 'package:webpract/pages/containers/container2.dart';
import 'package:webpract/pages/containers/container3.dart';
import 'package:webpract/pages/containers/container4.dart';
import 'package:webpract/pages/containers/container5.dart';

import '../utils/constants.dart';
import '../widgets/navBar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              NavBar(),
              container1(),
              container2(),
              container3(),
              container4(),
              container5(),
            ],
          ),
        ),
      ),
    );
  }
}