import 'package:flutter/material.dart';
import 'package:test_ui/common/helper/is_dark_mode.dart';
import 'package:test_ui/common/widgets/appbar/app_bar.dart';
import 'package:test_ui/common/widgets/button/basic_app_button.dart';
import 'package:test_ui/core/configs/assets/app_vectors.dart';
import 'package:test_ui/core/configs/theme/app_colors.dart';

class SignupOrSigninPage extends StatelessWidget {
  const SignupOrSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppVectors.logo),
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    'Enjoy Listening To Music',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  const Text(
                    'He app he updates abyu ngahla awpa chata update awpa heta phusa chhei abyu tyhta chacha atahma ta ei duasuh liata cha ei rairu khei kaw chypa acha.',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.gray),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child:
                            BasicAppButton(onPressed: () {}, title: 'Register'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: context.isDarkMode
                                      ? Colors.white
                                      : Colors.black),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
