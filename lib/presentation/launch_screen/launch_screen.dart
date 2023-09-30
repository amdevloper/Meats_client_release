import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            767.00,
          ),
          width: size.width,
          padding: getPadding(
            left: 2,
            right: 2,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgIllustration,
                height: getVerticalSize(
                  795.00,
                ),
                width: getHorizontalSize(
                  371.00,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMeat1,
                height: getSize(
                  229.00,
                ),
                width: getSize(
                  229.00,
                ),
                alignment: Alignment.topCenter,
                margin: getMargin(
                  top: 196,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
