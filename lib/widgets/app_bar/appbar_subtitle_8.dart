import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../theme/app_style.dart';

// ignore: must_be_immutable
class AppbarSubtitle8 extends StatelessWidget {
  AppbarSubtitle8({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtRobotoRegular12Bluegray300.copyWith(
            color: ColorConstant.blueGray300,
          ),
        ),
      ),
    );
  }
}
