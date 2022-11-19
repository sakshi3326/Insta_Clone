import 'package:flutter/material.dart';
import 'package:insta/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenlayout;
  const ResponsiveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenlayout,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth > webScreenSize){
            //web screeen
            return webScreenLayout;
          }
          //mobile screeen
          return mobileScreenlayout;
        },
    );
  }
}
