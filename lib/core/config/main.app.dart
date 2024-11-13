import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/route_utils.dart';
import '../constants/color_constants.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Xefag App',
      theme: ThemeData(
  primaryColor: ColorConstants.primaryBlue,
  colorScheme: ColorScheme.light(
    primary: ColorConstants.primaryBlue,
    background: ColorConstants.primaryBlue,
  ),
),

      getPages: RouteUtils.pages,
    );
  }
}
