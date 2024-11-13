import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/string_constants.dart';
import '../../core/constants/image_constants.dart';
import '../../core/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlue,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConstants.appName,
              style: TextStyle(
                fontFamily: 'Bodoni',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              StringConstants.homeDescription,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Center(
              child: Image.asset(
                ImageConstants.relaxImage,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed('/product'),
              child: const Text('View Products'),
            ),
          ],
        ),
      ),
    );
  }
}
