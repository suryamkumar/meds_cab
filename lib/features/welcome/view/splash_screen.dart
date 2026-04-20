import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/extensions/media_query.dart';
import '../../../core/routes/navigation.dart';
import '../../../core/utils/colors.dart';
import '../../ambulance/View/ambulance_screen.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    // Wait for splash animation after Home Screen Appear
    await Future.delayed(const Duration(milliseconds: 1800));

    if (!mounted) return;

    Widget destination;
    destination = AmbulanceScreen();

    if (!mounted) return;
    context.pushAndRemoveUntil(page: destination);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/van.png", color: kWhite,
          height: context.height * 0.5,
          width: context.width * 0.8,
        ).animate(delay: const Duration(milliseconds: 300)).fadeIn(
          duration: const Duration(milliseconds: 1800),
        ),
      ),
    );
  }
}