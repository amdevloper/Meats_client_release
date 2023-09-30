import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      default:
        return getPadding(
          all: 4,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case IconButtonVariant.OutlineRedA70030:
        return ColorConstant.gray90001;
      case IconButtonVariant.FillTeal300:
        return ColorConstant.teal300;
      case IconButtonVariant.FillBlack90075:
        return ColorConstant.black90075;
      default:
        return ColorConstant.gray90001;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.FillGray90001:
      case IconButtonVariant.OutlineRedA70030:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillBlack90075:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray90001,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case IconButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineRedA70030:
        return [
          BoxShadow(
            color: ColorConstant.redA70030,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          )
        ];
      case IconButtonVariant.OutlineGray90001:
      case IconButtonVariant.FillGray90001:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillBlack90075:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder4,
  CircleBorder28,
  CircleBorder32,
  CircleBorder12,
  CircleBorder25,
}
enum IconButtonPadding {
  PaddingAll4,
  PaddingAll14,
}
enum IconButtonVariant {
  OutlineGray90001,
  FillGray90001,
  OutlineRedA70030,
  FillTeal300,
  FillBlack90075,
  FillGray900a2,
}
