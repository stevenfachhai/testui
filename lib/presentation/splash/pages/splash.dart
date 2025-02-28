import 'package:flutter/material.dart';
import 'package:test_ui/core/configs/assets/app_vectors.dart';
import 'package:test_ui/presentation/intro/pages/get_stared.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      redirect(context); // ✅ Pass context here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(AppVectors.logo)),
    );
  }
}

Future<void> redirect(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 2));
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => const GetStaredPage()));
}
