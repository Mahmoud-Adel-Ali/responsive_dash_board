import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyless {
  static  TextStyle styleReguler16 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :16),
    fontWeight: FontWeight.w400,
    color: const Color(0xff064060),
  );
  static  TextStyle styleBold16 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :16),
    fontWeight: FontWeight.w700,
    color: const Color(0xff4EB7F2),
  );
  static  TextStyle styleMedium16 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :16),
    fontWeight: FontWeight.w500,
    color: const Color(0xff064060),
  );
  static  TextStyle styleSemiBold16 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :16),
    fontWeight: FontWeight.w600,
    color: const Color(0xff064060),
  );
  static  TextStyle styleSemiBold20 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :20),
    fontWeight: FontWeight.w600,
    color: const Color(0xff064060),
  );
  static  TextStyle styleMedium20 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :20),
    fontWeight: FontWeight.w500,
    color: const Color(0xffFFFFFF),
  );
  static  TextStyle styleReguler12 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :12),
    fontWeight: FontWeight.w400,
    color: const Color(0xffAAAAAA),
  );
  static  TextStyle styleReguler14 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :14),
    fontWeight: FontWeight.w400,
    color: const Color(0xffAAAAAA),
  );
  static  TextStyle styleSemiBold24 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :24),
    fontWeight: FontWeight.w600,
    color: const Color(0xff4EB7F2),
  );
  static  TextStyle styleSemiBold18 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontsize(fontsize :18),
    fontWeight: FontWeight.w600,
    color: const Color(0xffFFFFFF),
  );
}

double getResponsiveFontsize({required double fontsize}) {
  double scaleFactor = getScaleFactor();

  double responsiveFontSzie = scaleFactor * fontsize;
  double lowerLimit = 0.85 * responsiveFontSzie;
  double upperLimit = 1.25 * responsiveFontSzie;

  return responsiveFontSzie.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  // double width = MediaQuery.sizeOf(context).width;
  var dispatchet = PlatformDispatcher.instance;
  var physicalWidth = dispatchet.views.first.physicalSize.width;
  var devicePixelRatio = dispatchet.views.first.devicePixelRatio;
  final double width = physicalWidth / devicePixelRatio;
  if (width <= SizeConfig.tablet) {
    return width / 550;
  } else if (width <= SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}
