import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillWhiteA700_1:
        return Stack(
          children: [
            Container(
              height: getVerticalSize(
                46.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                374.00,
              ),
              margin: getMargin(
                left: 1,
                top: 46,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
          ],
        );
      case Style.bgGradientGray900ceGray90000:
        return Container(
          height: getVerticalSize(
            99.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
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
            ),
          ),
        );
      case Style.bgFillWhiteA700_2:
        return Stack(
          children: [
            Container(
              height: getVerticalSize(
                56.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: size.width,
              margin: getMargin(
                top: 55.83,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
          ],
        );
      case Style.bgFillWhiteA700:
        return Container(
          height: getVerticalSize(
            48.00,
          ),
          width: size.width,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillWhiteA700_1,
  bgGradientGray900ceGray90000,
  bgFillWhiteA700_2,
  bgFillWhiteA700,
}
