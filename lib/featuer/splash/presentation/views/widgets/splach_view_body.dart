
import 'package:bookool/core/utils/app_router.dart';
import 'package:bookool/core/utils/assets_data.dart';
import 'package:bookool/featuer/splash/presentation/views/widgets/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), (){
      // Get.to(() =>const HomeView(), transition: Transition.fade, duration: kTransitionDutation);
      GoRouter.of(context).push(AppRouter.kHomeViewRouter);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        AnimatedText(animation: animation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    animation =
        Tween<Offset>(begin: const Offset(0, 13), end: const Offset(0, 10))
            .animate(animationController);
    animationController.forward();
  }
}
