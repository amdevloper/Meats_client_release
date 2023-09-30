import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage160x335,
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
    );
  }
}
