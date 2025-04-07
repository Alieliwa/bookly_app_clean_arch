import 'package:bookly_app_clean_arch/constans.dart';
import 'package:bookly_app_clean_arch/core/utils/assets_data.dart';
import 'package:bookly_app_clean_arch/features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app_clean_arch/features/home/presentaion/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    slidingAnimtaionMethode();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 5),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void slidingAnimtaionMethode() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: transationDuration,
      );
    });
  }
}
