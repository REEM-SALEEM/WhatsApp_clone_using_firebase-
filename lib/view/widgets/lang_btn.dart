import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';
import 'package:watsappclone/core/size/size.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: const Color(0xFF09141A),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(mainAxisSize: MainAxisSize.min, children: const [
            Icon(
              Icons.language,
              color: Coloors.greenDark,
            ),
            SizeB.w10,
            Text(
              'English',
              style: TextStyle(color: Colors.white),
            ),
            SizeB.w10,
            Icon(
              Icons.keyboard_arrow_down,
              color: Coloors.greenDark,
            )
          ]),
        ),
      ),
    );
  }
}
