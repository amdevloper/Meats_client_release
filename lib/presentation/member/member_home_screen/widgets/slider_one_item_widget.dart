import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SliderOneItemWidget extends StatelessWidget {
  SliderOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage2,
        height: getVerticalSize(
          160.00,
        ),
        width: getHorizontalSize(
          335.00,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
        margin: getMargin(
          bottom: 17,
        ),
      ),
    );
  }
}
