import 'package:bookly_app_clean_arch/constans.dart';
import 'package:bookly_app_clean_arch/features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: primaryColor),
      home: SplashView(),
    );
  }
}
