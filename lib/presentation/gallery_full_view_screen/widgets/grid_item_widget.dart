import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImageplaceholder19,
      height: getSize(
        109.00,
      ),
      width: getSize(
        109.00,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          16.00,
        ),
      ),
    );
  }
}
