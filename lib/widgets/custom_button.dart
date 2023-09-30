import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget,
      this.isButtonDisable});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  bool? isButtonDisable = false;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: isButtonDisable == true ? null : onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: getHorizontalSize(width ?? 0),
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          getHorizontalSize(width ?? 0),
          getVerticalSize(height ?? 0),
        ),
        padding: _setPadding(),
        backgroundColor: isButtonDisable == true ? Colors.grey.withOpacity(0.5) : _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT8:
        return getPadding(
          left: 8,
          top: 8,
          bottom: 8,
        );
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingT1:
        return getPadding(
          left: 1,
          top: 1,
          bottom: 1,
        );
      case ButtonPadding.PaddingT15:
        return getPadding(
          top: 15,
          right: 15,
          bottom: 15,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBluegray300:
        return ColorConstant.blueGray300;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.OutlineGray300:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray300_1:
        return ColorConstant.gray300;
      case ButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray9004f_1:
        return ColorConstant.redA200;
      case ButtonVariant.FillRed300:
        return ColorConstant.red300;
      case ButtonVariant.GradientGray900ceGray90000:
        return null;
      default:
        return ColorConstant.gray90001;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray300_1:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray9004f_1:
        return ColorConstant.gray9004f;
      case ButtonVariant.FillBluegray300:
      case ButtonVariant.FillGray100:
      case ButtonVariant.OutlineGray300:
      case ButtonVariant.OutlineGray300_1:
      case ButtonVariant.FillGray90001:
      case ButtonVariant.GradientGray900ceGray90000:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillRed300:
        return null;
      default:
        return ColorConstant.gray9004f;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.CustomBorderLR20:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
        );
      case ButtonShape.RoundedBorder9:
        return BorderRadius.circular(
          getHorizontalSize(
            9.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRegular16Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.SofiaPro14:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Sofia Pro',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRegular12:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoMedium16Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoRegular12Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRegular18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoBold16Gray90001:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray300_1:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientGray900ceGray90000:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientGray900ceGray90000:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            0.93,
          ),
          colors: [
            ColorConstant.gray900Ce,
            ColorConstant.gray90000,
          ],
        );
      default:
        return null;
        ;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGray9004f_1:
        return [
          BoxShadow(
            color: ColorConstant.gray9004f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          )
        ];
      case ButtonVariant.FillBluegray300:
      case ButtonVariant.FillGray100:
      case ButtonVariant.OutlineGray300:
      case ButtonVariant.OutlineGray300_1:
      case ButtonVariant.FillGray90001:
      case ButtonVariant.GradientGray900ceGray90000:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillRed300:
        return null;
      default:
        return [
          BoxShadow(
            color: ColorConstant.gray9004f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              6,
            ),
          )
        ];
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder24,
  CircleBorder20,
  CircleBorder16,
  CustomBorderLR20,
  RoundedBorder9,
}
enum ButtonPadding {
  PaddingAll13,
  PaddingAll16,
  PaddingAll9,
  PaddingT8,
  PaddingAll5,
  PaddingT1,
  PaddingT15,
}
enum ButtonVariant {
  OutlineGray9004f,
  FillBluegray300,
  FillGray100,
  OutlineGray300,
  OutlineGray300_1,
  FillGray90001,
  GradientGray900ceGray90000,
  FillWhiteA700,
  OutlineGray9004f_1,
  FillRed300,
  OutlineDeeporange40033
}
enum ButtonFontStyle {
  RobotoBold16,
  RobotoRegular16,
  RobotoRegular16Black900,
  SofiaPro14,
  RobotoRegular12,
  RobotoMedium16,
  RobotoMedium16Gray900,
  RobotoRegular12Gray900,
  RobotoRegular18,
  RobotoBold16Gray90001,
  RobotoBold14,
}
