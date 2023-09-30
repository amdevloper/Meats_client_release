import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.shape,
      this.padding,
      this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text});

  RadioShape? shape;

  RadioPadding? padding;

  RadioFontStyle? fontStyle;

  EdgeInsetsGeometry? margin;

  Function(String)? onChange;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: IntrinsicWidth(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            minLeadingWidth: getHorizontalSize(iconSize ?? 0),
            horizontalTitleGap: getHorizontalSize(
              0,
            ),
            leading: Radio<String>(
              value: value ?? "",
              groupValue: groupValue,
              onChanged: (value) {
                onChange!(value!);
              },
            ),
            title: Text(
              text ?? "",
              style: _setFontStyle(),
            ),
          ),
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
        ;
    }
  }
}

enum RadioShape {
  RoundedBorder4,
  CircleBorder12,
}
enum RadioPadding {
  PaddingT1,
}
enum RadioFontStyle {
  RobotoMedium14,
  RobotoRegular16,
}
