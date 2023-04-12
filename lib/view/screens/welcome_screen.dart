import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';
import 'package:watsappclone/core/size/size.dart';
import 'package:watsappclone/core/theme/custom_theme_extension.dart';
import 'package:watsappclone/view/widgets/custom_elevated_btn.dart';
import 'package:watsappclone/view/widgets/lang_btn.dart';
import 'package:watsappclone/view/widgets/privacy_terms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Coloors.backgroundDark,
      body: Column(children: [
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Image.asset(
              'assets/images/circle.png',
              color: context.theme.circleImageColor,
            ),
          ),
        )),
        SizeB.h40,
        Expanded(
          child: Column(children: [
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const PrivacyAndTerms(),
            CustomElevButton(
              onPressed: () {},
              text: 'AGREE AND CONTINUE',
            ),
            SizeB.h50,
            const LanguageButton()
          ]),
        ),
      ]),
    );
  }
}
