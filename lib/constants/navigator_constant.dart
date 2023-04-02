import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

////////////////////////////////////////////////////////////////////////////////////
// This is for smooth routing or transition. Rather than jumping, it is made of
// the PageTransition package.
////////////////////////////////////////////////////////////////////////////////////

void nextScreen(context, page) {
  Navigator.push(context, PageTransition(
    type: PageTransitionType.fade,
    child: page,
  ),);
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(context, PageTransition(
    type: PageTransitionType.fade,
    child: page,
  ),);
}
