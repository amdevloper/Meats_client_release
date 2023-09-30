import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.labelText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,
      this.isClickEnabled  = false});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  String? labelText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  bool isClickEnabled;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setLableFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      labelText: labelText,
      labelStyle: _setFontStyle(),
      border:  isClickEnabled ? _setNoBorder() : _setBorderStyle(),
      enabledBorder: isClickEnabled ? _setNoBorder() : _setBorderStyle(),
      focusedBorder:  isClickEnabled ? _setNoBorder() : _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setLableFontStyle() {
    return TextStyle(
      color: ColorConstant.black900,
      fontSize: getFontSize(
        16,
      ),
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    );
  }

_setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RobotoRegular16:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RobotoMedium13:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoMedium16:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoMedium16Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoRegular12:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RobotoRegular10:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case TextFormFieldShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

_setNoBorder() {
 return OutlineInputBorder(
  borderSide: BorderSide.none);
}

  // _setNoInputBorder() {
  //   return OutlineInputBorder(
  //       border: InputBorder.none);
  // }


  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray300_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray300,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineIndigo900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.indigo900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.UnderLineGray300:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray300,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray300,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray300_1:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineIndigo900:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray300_1:
        return true;
      case TextFormFieldVariant.OutlineIndigo900:
        return true;
      case TextFormFieldVariant.UnderLineGray300:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      case TextFormFieldPadding.PaddingT13:
        return getPadding(
          left: 13,
          top: 13,
          bottom: 13,
        );
      case TextFormFieldPadding.PaddingT16:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          left: 12,
          top: 17,
          right: 12,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingT12:
        return getPadding(
          left: 10,
          top: 12,
          right: 10,
          bottom: 12,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder8,
  CircleBorder24,
  CircleBorder27,
}
enum TextFormFieldPadding {
  PaddingAll14,
  PaddingAll17,
  PaddingT13,
  PaddingT16,
  PaddingT17,
  PaddingT12,
}
enum TextFormFieldVariant {
  None,
  OutlineGray300,
  OutlineGray300_1,
  OutlineIndigo900,
  UnderLineGray300,
}
enum TextFormFieldFontStyle {
  RobotoRegular16Bluegray300,
  RobotoRegular16,
  MuktaMedium1405,
  RobotoMedium13,
  RobotoMedium16,
  RobotoMedium16Gray900,
  RobotoRegular12,
  RobotoRegular10,
}
