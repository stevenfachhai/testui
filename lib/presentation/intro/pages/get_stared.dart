import 'package:flutter/material.dart';
import 'package:test_ui/common/widgets/button/basic_app_button.dart';
import 'package:test_ui/core/configs/assets/app_images.dart';
import 'package:test_ui/core/configs/assets/app_vectors.dart';
import 'package:test_ui/core/configs/theme/app_colors.dart';
import 'package:test_ui/presentation/choose_mode/pages/choose_mode.dart';

class GetStaredPage extends StatelessWidget {
  const GetStaredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG), // ✅ Correct path
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      AppVectors.logo,
                      fit: BoxFit.fill,
                    )),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'She shines like a star She got my heart like a firework And just can’t stop thinking of you Lets pretend we build this town  And ill be long gone And I got no wings to fly But this feelings taking the flight',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.gray,
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ChooseModePage()),
                      );
                    },
                    title: 'Get started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
